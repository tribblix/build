#!/bin/sh
#
${THOME}/build/dobuild -64 freetype-2.8.1 -C "-enable-biarch-config --with-zlib --with-pic --with-harfbuzz=no"
${THOME}/build/genpkg TRIBsys-lib-freetype-2 freetype-2.8.1
