TARGET = cregexpr

CONFIG += c++20 console warn_on
#CONFIG += debug
CONFIG += release static
CONFIG -= qt
QTPLUGIN.imageformats = -

QMAKE_CFLAGS_RELEASE += -O3
QMAKE_LFLAGS_RELEASE += -Wl,-O3
QMAKE_CXXFLAGS_RELEASE += -O3

TEMPLATE = app

SOURCES += cregexpr.cpp
