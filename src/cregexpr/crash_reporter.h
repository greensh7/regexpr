// crash_reporter.h
//
// #include <stacktrace>
// Stacktrace and native C++ tracing pipelines are broken in all GCC toolsets
// on RHEL 8 due to missing the underyling backend archives across the toolsets.
// Since no binutils-devel is installed here's a dependency-free workaround using
// header-only call-stack unwinding that works natively with clang and binutils.
//
// Uncopyright (u)2026, Shaun Green

#pragma once

// Enforce C++20 as the minimum requirement at build time
#if __cplusplus < 202002L
	#error "CrashReporter requires a minimum of C++20. Please enable -std=c++20 or greater"
#endif

#include <iostream>
#include <array>
#include <span>
#include <memory>
#include <ranges>
#include <string_view>
#include <cxxabi.h>
#include <csignal> // Required for signal management
#include <cstdlib> // Required for std::_Exit
#include <fstream>

#ifdef _WIN32
	#include <windows.h>
#else
	#include <execinfo.h>
	#include <unistd.h>
#endif


class CrashReporter
{
private:
	// Fallback vector container populated automatically at process load time
	static inline std::vector<std::string> saved_args;

	static std::string demangle(std::string_view frame_string)
	{
#ifdef _WIN32
		int status = 0;
		std::unique_ptr<char, decltype(&::free)> demangled_ptr
		{
			abi::__cxa_demangle(frame_string.data(), nullptr, nullptr, &status), &::free
		};
		if (status == 0 && demangled_ptr)
		{
			return std::string(demangled_ptr.get());
		}
		return std::string(frame_string);
#else
		const size_t open_paren = frame_string.find('(');
		const size_t plus_sign = frame_string.find('+', open_paren);

		// If the frame has no named function symbol (e.g., raw system entry frames)
		if (open_paren == std::string_view::npos || plus_sign == std::string_view::npos)
			return std::string(frame_string);

		// Handle edge case where parenthesis exists but is empty "()"
		if (plus_sign <= open_paren + 1)
			return "unknown_function";

		std::string mangled(frame_string.substr(open_paren + 1, plus_sign - open_paren - 1));
		int status = 0;
		std::unique_ptr<char, decltype(&::free)> demangled_ptr
		{
			abi::__cxa_demangle(mangled.c_str(), nullptr, nullptr, &status), &::free
		};

		// Clean Return: Return ONLY the clean function signature if demangling succeeds
		if (status == 0 && demangled_ptr)
			return std::string(demangled_ptr.get());

		// Fallback: If demangling fails but a raw C symbol was found, return just that symbol
		return mangled;
#endif
	}

	static void print_stacktrace()
	{
		// Fixed-size array to securely hold raw frame pointers
		std::array<void *, 32> buffer{};
		// Capture the current stack depth safely
		size_t num_frames = 0;

		std::cerr << "\n--- Stacktrace --- \n";

#ifdef _WIN32
		num_frames = CaptureStackBackTrace(0, buffer.size(), buffer.data(), nullptr);
		for (size_t i = 0; i < num_frames; ++i)
			std::cerr << "  Frame [" << i << "]: " << buffer.at(i) << '\n';
#else
		num_frames = ::backtrace(buffer.data(), buffer.size());
		// Convert frames to strings; use unique_ptr custom deleter to prevent leaks
		std::unique_ptr<char *[], decltype(&::free)> symbols
		{
			::backtrace_symbols(buffer.data(), num_frames), &::free
		};

		if (!symbols) return;

		// Create a modern continuous span over the allocated string array
		auto frames_view = std::span{symbols.get(), num_frames};

		// Use C++23 range-for and views to iterate or reverse easily
		for (const char *frame_string : frames_view)
		{
			if (frame_string == nullptr) continue;

			// Skip low-level internal OS bootstrap frames
			std::string name = demangle(frame_string);
			// Filter out internal class engine noise and system trampolines
			if (name == "__libc_start_main" || name == "_start" ||
			    name.starts_with("./") ||
			    name.starts_with("CrashReporter::") ||
			    name == "unknown_function")
			{
				continue;
			}

			// Normalize formatting by adding missing parentheses
			if (!name.ends_with(")"))
				name += "()";

			std::cerr << name << '\n';
		}
#endif
	}

	// The core crash interceptor function
	static void handle_crash(int signal_number)
	{
		// Write directly to stderr to bypass potentially corrupted stdout buffers
		std::cerr << "\n[CRASH DETECTED] Program terminated by signal: ";
		switch (signal_number)
		{
			case SIGSEGV: std::cerr << "SIGSEGV (Segmentation Fault)\n"; break;
			case SIGABRT: std::cerr << "SIGABRT (Abort/Assertion Failure)\n"; break;
			case SIGFPE:  std::cerr << "SIGFPE (Fatal Arithmetic/Divide-by-Zero)\n"; break;
			case SIGILL:  std::cerr << "SIGILL (Illegal Instruction)\n"; break;
			default:      std::cerr << "Signal " << signal_number << "\n"; break;
		}

		// Print the exact cmd line args passed from filesystem register state
		if (!saved_args.empty())
		{
			std::cerr << "Arguments at launch:\n";
			for (size_t i = 0; i < saved_args.size(); ++i)
				std::cerr << "  argv[" << i << "]: " << saved_args.at(i) << "\n";
		}

		// Dump the clean trace
		print_stacktrace();

		// Force terminate immediately to prevent infinite loops or cascading memory faults
		// The std::_Exit call is used instead of a normal return or std::exit().
		// If a crash happens because the heap memory is corrupted, regular exit hooks 
		// will lock up or trigger a secondary crash. _Exit safely closes a hung process.
		std::_Exit(signal_number);
	}

public:
	CrashReporter()
	{
#ifdef _WIN32
		int argc = 0;
		LPWSTR *argvW = CommandLineToArgvW(GetCommandLineW(), &argc);
		if (argvW)
		{
			for (int i = 0; i < argc; ++i)
			{
				int size = WideCharToMultiByte(CP_UTF8, 0, argvW[i], -1, nullptr, 0, nullptr, nullptr);
				std::string arg(size, '\0');
				WideCharToMultiByte(CP_UTF8, 0, argvW[i], -1, arg.data(), size, nullptr, nullptr);
				if (!arg.empty() && arg.back() == '\0')
					arg.pop_back();
				saved_args.push_back(arg);
			}
			LocalFree(argvW);
		}
#else
		// On Linux, extract clean data directly from the kernel interface state
		std::ifstream cmdline("/proc/self/cmdline", std::ios::binary);
		if (cmdline)
		{
			std::string arg;
			// Arguments inside cmdline are separated by null (\0) characters
			while (std::getline(cmdline, arg, '\0'))
			{
				if (!arg.empty())
					saved_args.push_back(arg);
			}
		}
#endif
		// Constructor automatically binds all 4 signals on app launch
		std::signal(SIGSEGV, handle_crash);
		std::signal(SIGABRT, handle_crash);
		std::signal(SIGFPE, handle_crash);
		std::signal(SIGILL, handle_crash);
	}
};

// Inline global instantiation forces this to execute before main() runs
inline CrashReporter global_crash_reporter_instance;
