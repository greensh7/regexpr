TARGET=cregexpr
$(TARGET): $(TARGET).cpp crash_reporter.h
	clang++ -std=c++23 -Wall -static -O3 $(TARGET).cpp -o $(TARGET)
	strip --strip-unneeded $(TARGET)
	#upx --best $(TARGET)

clean:
	rm -f $(TARGET)
