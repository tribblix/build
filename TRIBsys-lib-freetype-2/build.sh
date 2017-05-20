#!/bin/sh
#
# this replaces the OI libraries
#
${THOME}/build/dobuild -64 freetype-2.8 -C "-enable-biarch-config --with-zlib --with-pic --with-harfbuzz=no"
${THOME}/build/genpkg TRIBsys-lib-freetype-2 freetype-2.8
