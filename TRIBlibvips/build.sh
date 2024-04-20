#!/bin/sh
#
# only current consumers are go-based, so restrict to x86 and 64-bit only
#
env AR=/usr/bin/ar ${THOME}/build/mesonbuild -64only vips-8.15.2 -C "-Dintrospection=disabled -Dimagequant=disabled"
${THOME}/build/genpkg TRIBlibvips vips-8.15.2
