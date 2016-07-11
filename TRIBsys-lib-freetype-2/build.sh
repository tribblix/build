#!/bin/sh
#
# this replaces the OI libraries
#
# gotcha for 2.6.4, a "fix" added unresolved symbols to the
# libraries that we have to undo
#
${THOME}/build/dobuild -64 freetype-2.6.4 -C "-enable-biarch-config --with-zlib --with-pic --with-harfbuzz=no"
${THOME}/build/genpkg TRIBsys-lib-freetype-2 freetype-2.6.4
