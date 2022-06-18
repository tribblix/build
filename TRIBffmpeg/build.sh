#!/bin/sh
#
# yasm (fallback to nasm) is a build-time dependency - zap install yasm
#
# this is a split build, as the SONAME carries version information
# therefore, the 32-bit build is 2.8 for compatibility with old consumers
# while the 64-bit build can be newer
#
# disable ffserver in the 32-bit build, it's been removed
# the binaries are 64-bit, overwriting the 32-bit ones
#
env CPPFLAGS=-std=gnu99 ${THOME}/build/dobuild ffmpeg-2.8.20 -C "--enable-shared --disable-static --disable-ffserver"
env CPPFLAGS=-std=gnu99 ${THOME}/build/dobuild -64only ffmpeg-4.4.2 -C "--strip=/usr/gnu/bin/strip --enable-shared --disable-static"
${THOME}/build/genpkg TRIBffmpeg ffmpeg-2.8.20 ffmpeg-4.4.2
