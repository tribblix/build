#!/bin/sh
#
# lzip and friends
#
${THOME}/build/dobuild lzip-1.23 -C "LDFLAGS=-m64 CPPFLAGS=-m64"
${THOME}/build/dobuild -64 lzlib-1.14 -C --enable-shared +C "CFLAGS+=-m64 --enable-shared"
${THOME}/build/dobuild plzip-1.11 -C "CPPFLAGS=-I../lzlib-1.14-64bit LDFLAGS=-L../lzlib-1.14-64bit CXXFLAGS+=-m64"
${THOME}/build/genpkg TRIBcompress-lzip lzip-1.23 lzlib-1.14 plzip-1.11
