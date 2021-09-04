#!/bin/sh
#
# lzip and friends
#
${THOME}/build/dobuild lzip-1.22
${THOME}/build/dobuild -64 lzlib-1.12 -C --enable-shared +C "CFLAGS+=-m64 --enable-shared"
${THOME}/build/dobuild plzip-1.9 -C "CPPFLAGS=-I../lzlib-1.12 LDFLAGS=-L../lzlib-1.12"
${THOME}/build/genpkg TRIBcompress-lzip lzip-1.22 lzlib-1.12 plzip-1.9
