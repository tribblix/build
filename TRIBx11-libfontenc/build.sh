#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# historically this package shipped the encodings too, so continue
# historically the encodings weren't gzipped, and OI doesn't either
#
# the encodings come from https://www.x.org/releases/individual/font/
#
# separate build script for sparc as it needs to retain 32-bit
#
${THOME}/build/dobuild -64only libfontenc-1.1.9
${THOME}/build/dobuild encodings-1.1.0 -C "--disable-gzip-small-encodings --disable-gzip-large-encodings"
${THOME}/build/genpkg TRIBx11-libfontenc libfontenc-1.1.9 encodings-1.1.0
