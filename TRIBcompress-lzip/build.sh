#!/bin/sh
#
# lzip and friends
#
${THOME}/build/dobuild lzip-1.16
${THOME}/build/dobuild lzlib-1.6 -C --enable-shared
${THOME}/build/dobuild plzip-1.3 -C "CPPFLAGS=-I../lzlib-1.6 LDFLAGS=-L../lzlib-1.6"
${THOME}/build/genpkg TRIBcompress-lzip lzip-1.16 lzlib-1.6 plzip-1.3
