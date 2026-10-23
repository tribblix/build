#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 freetype-2.15.0 -C "-enable-biarch-config --with-zlib --with-pic --with-harfbuzz=no --enable-freetype-config --with-brotli=no"
${THOME}/build/genpkg TRIBsys-lib-freetype-2 freetype-2.15.0
