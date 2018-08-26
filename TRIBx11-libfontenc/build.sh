#!/bin/sh
#
# historically this package shipped the encodings too, so continue
# and historically the encodings weren't gzipped, and OI doesn't either
#
${THOME}/build/dobuild -64 libfontenc-1.1.3
${THOME}/build/dobuild encodings-1.0.4 -C "--disable-gzip-small-encodings --disable-gzip-large-encodings"
${THOME}/build/genpkg TRIBx11-libfontenc libfontenc-1.1.3 encodings-1.0.4
