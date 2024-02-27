#!/bin/sh
#
# just the library
#
${THOME}/build/dobuild -64 nghttp2-1.59.0 -C --enable-lib-only
${THOME}/build/genpkg TRIBlibnghttp2 nghttp2-1.59.0
