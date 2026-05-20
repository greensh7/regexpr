TARGET = cregexpr

CONFIG += c++23 console warn_on
CONFIG += debug
#CONFIG += release static
CONFIG -= qt
QTPLUGIN.imageformats = -

QMAKE_CC = clang
QMAKE_CXX = clang++
QMAKE_CFLAGS_RELEASE += -O3
QMAKE_LFLAGS_RELEASE += -Wl,-O3
QMAKE_CXXFLAGS_RELEASE += -O3

TEMPLATE = app

SOURCES += cregexpr.cpp

# Unsupported target
#QMAKE_POST_LINK += strip -v --strip-unneeded $(TARGET)
#QMAKE_POST_LINK += && upx --best $(TARGET)
