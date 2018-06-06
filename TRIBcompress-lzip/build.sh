#!/bin/sh
#
# lzip and friends
#
${THOME}/build/dobuild lzip-1.20
${THOME}/build/dobuild lzlib-1.10 -C --enable-shared
${THOME}/build/dobuild plzip-1.7 -C "CPPFLAGS=-I../lzlib-1.10 LDFLAGS=-L../lzlib-1.10"
${THOME}/build/genpkg TRIBcompress-lzip lzip-1.20 lzlib-1.10 plzip-1.7
