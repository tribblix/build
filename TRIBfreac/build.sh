#!/bin/sh
#
# builds, but gui doesn't start - looping in iconv somewhere
#
${THOME}/build/unpack freac-1.1.7
cd freac-1.1.7
gmake -j 4 CC=gcc prefix=/usr
cd ..
${THOME}/build/genpkg -M "CC=gcc prefix=/usr" TRIBfreac freac-1.1.7
