#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# lzip and friends
#
${THOME}/build/dobuild lzip-1.25 -C "LDFLAGS=-m64 CPPFLAGS=-m64"
${THOME}/build/dobuild -64only lzlib-1.15 -C "CFLAGS+=-m64 --disable-static --enable-shared"
${THOME}/build/dobuild plzip-1.12 -C "CPPFLAGS=-I../lzlib-1.15-64bit LDFLAGS=-L../lzlib-1.15-64bit CXXFLAGS+=-m64"
${THOME}/build/dobuild lunzip-1.15 -C "LDFLAGS=-m64 CPPFLAGS=-m64"
${THOME}/build/genpkg TRIBcompress-lzip lzip-1.25 lzlib-1.15 plzip-1.12 lunzip-1.15
