#!/bin/sh
#
env ZLIB_CFLAGS="-I/usr/include" ZLIB_LIBS="-lz" ${THOME}/build/dobuild liborcus-0.7.0
${THOME}/build/genpkg TRIBliborcus liborcus-0.7.0
