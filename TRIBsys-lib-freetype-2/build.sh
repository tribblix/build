#!/bin/sh
#
${THOME}/build/dobuild -64 freetype-2.10.4 -C "-enable-biarch-config --with-zlib --with-pic --with-harfbuzz=no --enable-freetype-config"
${THOME}/build/genpkg TRIBsys-lib-freetype-2 freetype-2.10.4
