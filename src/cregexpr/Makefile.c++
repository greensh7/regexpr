TARGET=cregexpr
$(TARGET):
	g++ -std=c++20 -Wall -O3 -static -o $(TARGET) $(TARGET).cpp
	strip --strip-unneeded $(TARGET)
	upx --best $(TARGET)

clean:
	rm $(TARGET)
