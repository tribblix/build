#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# old versions shipped in TRIBlibpng-compat
#
# ship both 1.4 and 1.6
# TRIBlibsdl-image still uses 1.4
#
# current source might only be available at
# https://github.com/pnggroup/libpng/tags
#
# build fails completely with current gawk
#
${THOME}/build/dobuild -64 libpng-1.4.22 -C "--sysconfdir=/etc --disable-static"
${THOME}/build/dobuild -64 libpng-1.6.59 -C "--sysconfdir=/etc  --disable-static AWK=/usr/bin/awk"
${THOME}/build/genpkg TRIBimage-libpng libpng-1.4.22 libpng-1.6.59
