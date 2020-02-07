#!/bin/sh
#
#
#
$THOME/build/unpack fish-3.0.2
cd fish-3.0.2
# add <strings.h> to src/history.cpp
./configure --prefix=/usr CXXFLAGS=-I/usr/gnu/include CPPFLAGS="-I/usr/gnu/include/ncurses -I/usr/gnu/include" LDFLAGS="-L/usr/gnu/lib -R/usr/gnu/lib" LIBS=-lncurses
gmake EXTRA_CXXFLAGS="-I/usr/gnu/include/ncurses -I/usr/gnu/include"
cd ..

$THOME/build/genpkg TRIBshell-fish fish-3.0.2
