TARGET=cregexpr
$(TARGET): 
	g++ -std=c++0x -Wall -O3 -o $(TARGET) $(TARGET).cpp
	#g++ -std=c++0x -Wall -O3 -static -o $(TARGET) $(TARGET).cpp
	#strip --strip-unneeded $(TARGET)
	#upx --best $(TARGET)

clean:
	rm $(TARGET)
