lessThan(QT_MAJOR_VERSION, 6): error(This project requires Qt 6 or later)

TARGET = qregexpr

QT = core
CONFIG   += c++20 warn_on console
#CONFIG   += debug
CONFIG   += release static
#CONFIG   += release

DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Hardening flag for highest level
# -D_LIBCPP_ENABLE_HARDENING=debug
# -D_FORTIFY_SOURCE=3

#DEFINES += _FORTIFY_SOURCE=3

#QMAKE_CC = clang
#QMAKE_CXX = clang++
QMAKE_CFLAGS_RELEASE += -O3
#QMAKE_CFLAGS_RELEASE += -O3 -fno-builtin
#QMAKE_LFLAGS += -Wl,-O3 -Wl,-Bstatic -static-libgcc -static-libstdc++ -L/usr/lib64 -libm -Wl,-Bdynamic
#QMAKE_LFLAGS -= -Wl,-O1 -static-libgcc -static-libstdc++
#QMAKE_LFLAGS_RELEASE += -Wl,-O3 -Wl,-Bstatic -l:libm.a -Wl,-Bdynamic
QMAKE_LFLAGS_RELEASE += -Wl,-O3
QMAKE_CXXFLAGS_RELEASE += -O3

TEMPLATE = app

SOURCES += qregexpr.cpp

# Unsupported target
QMAKE_POST_LINK += strip -v --strip-unneeded $(TARGET)
QMAKE_POST_LINK += && upx --best $(TARGET)
#QMAKE_POST_LINK += && chmod 0500 $(TARGET)
