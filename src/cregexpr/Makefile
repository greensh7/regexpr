TARGET=cregexpr
$(TARGET): 
	g++ -std=c++0x -Wall -O3 -static -o $(TARGET) $(TARGET).cpp
	strip --strip-unneeded $(TARGET)

clean:
	rm $(TARGET)
