lessThan(QT_MAJOR_VERSION, 5): error(This project requires Qt 5 or later)

TARGET = qregexpr

QT = core
CONFIG   += c++17 warn_on console
#CONFIG   += debug
CONFIG   += release static
#CONFIG   += release

#QMAKE_CC = clang
#QMAKE_CXX = clang++
QMAKE_CFLAGS_RELEASE += -O3
##QMAKE_LFLAGS += -Wl,-O3 -static-libgcc -static-libstdc++
##QMAKE_LFLAGS -= -Wl,-O1 -static-libgcc -static-libstdc++
#QMAKE_LFLAGS_RELEASE += -Wl,-O3 -static-libgcc -static-libstdc++
QMAKE_CXXFLAGS_RELEASE += -O3

TEMPLATE = app

SOURCES += qregexpr.cpp

# Unsupported target
QMAKE_POST_LINK += strip -v --strip-unneeded $(TARGET)
#QMAKE_POST_LINK += upx --best $(TARGET)
#QMAKE_POST_LINK += chmod 0500 $(TARGET)
