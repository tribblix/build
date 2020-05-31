#!/bin/sh
#
# we ship the cf files in a merged package, as that matches prior behaviour
#
${THOME}/build/dobuild imake-1.0.8 -C "--enable-mkdirhier --disable-ccmakedep --disable-cleanlinks --disable-makeg --disable-mergelib --disable-mkhtmlindex --disable-revpath RAWCPP=/usr/lib/cpp"
${THOME}/build/dobuild xorg-cf-files-1.0.6
${THOME}/build/genpkg TRIBdev-build-imake imake-1.0.8 xorg-cf-files-1.0.6
