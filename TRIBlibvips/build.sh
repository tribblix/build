#!/bin/sh
#
# only current consumers are go-based, so restrict to x86 and 64-bit only
#
env AR=/usr/bin/ar PATH=/usr/gnu/bin:$PATH ${THOME}/build/mesonbuild -64only vips-8.14.2 -C "-Dintrospection=false -Dimagequant=disabled"
${THOME}/build/genpkg TRIBlibvips vips-8.14.2
