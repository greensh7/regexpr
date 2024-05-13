// cregexpr.cpp
// regex_replace example
//
// Uncopyright (u)2019-2024, Shaun Green

#include <iostream>
#include <regex>
#include <string>
//#include <iterator>

using namespace std;

void test_regex_search(regex rgx, const string& input, string r, bool m);

int main (int argc, char *argv[])
{
#define GCC_VERSION (__GNUC__ * 10000 \
	+ __GNUC_MINOR__ * 100 \
	+ __GNUC_PATCHLEVEL__)

#if GCC_VERSION < 40900
	#error
	#error GCC/G++ version does not meet the minimum (4.9.0)
	#error to compile with C++11 support.
#endif

    if (argc<3 || argc>5)
	{
		cout << "Regexp Replacer 1.3" << endl;
		cout << "Replaces text using a regular expression pattern and replace text (optional)" << endl;
		cout << endl;
		cout << "Usage: ./cregexpr regexp text [replace text] [-m]" << endl;
		return 1;
	}
	regex re(argv[1]);
	const string text(argv[2]);
	string replace="";
	bool bShowMatch=false;
	string m="";
	if (argv[3])
		replace=argv[3];
	if (replace=="-m")
	{
		replace="";
		bShowMatch=true;
	}
	if (argv[4])
		m=argv[4];
	if (m=="-m")
		bShowMatch=true;
	// using string/c-string (3) version:
	test_regex_search(re, text, replace, bShowMatch);
	return 0;
}

void test_regex_search(regex rgx, const string& input, string r, bool b)
{
	smatch match;
	if (regex_search(input.begin(), input.end(), match, rgx))
	{
		string result=regex_replace(input,rgx,r);
		// using range/c-string (6) version:
		//string result;
		//regex_replace (back_inserter(result), text.begin(), text.end(), re, string("."));
		//regex_replace (ostreambuf_iterator<char>(cout), text.begin(), text.end(), re, string("."));
		//cout << regex_replace (text, re, string("[$&]"));
		// with flags:
		//cout << regex_replace (s,e,"$1 and $2",regex_constants::format_no_copy) << endl;
		if (b)
			cout << match[0] << endl;
		else
			cout << result << endl;
	}
}
