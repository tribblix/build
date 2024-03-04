#!/bin/sh
#
# historically this package shipped the encodings too, so continue
# historically the encodings weren't gzipped, and OI doesn't either
#
# the encodings come from https://www.x.org/releases/individual/font/
#
${THOME}/build/dobuild -64 libfontenc-1.1.8
${THOME}/build/dobuild encodings-1.1.0 -C "--disable-gzip-small-encodings --disable-gzip-large-encodings"
${THOME}/build/genpkg TRIBx11-libfontenc libfontenc-1.1.8 encodings-1.1.0
