#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we ship the cf files in a merged package, as that matches prior behaviour
#
# note that we build 32-bit, as a 64-bit built xmkmf pollutes the
# environment with some 64-bit flags
#
${THOME}/build/dobuild imake-1.0.10 -C "--enable-mkdirhier --disable-ccmakedep --disable-cleanlinks --disable-makeg --disable-mergelib --disable-mkhtmlindex --disable-revpath RAWCPP=/usr/lib/cpp"
${THOME}/build/mesonbuild xorg-cf-files-1.0.9
${THOME}/build/genpkg TRIBdev-build-imake imake-1.0.10 xorg-cf-files-1.0.9
