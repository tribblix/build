#!/bin/sh
#
# yasm (fallback to nasm) is a build-time dependency - zap install yasm
#
# this is a split build, the binaries are 64-bit, overwriting the 32-bit ones
#
env CPPFLAGS=-std=gnu99 ${THOME}/build/dobuild ffmpeg-4.4.2 -C "--strip=/usr/gnu/bin/strip --enable-shared --disable-static"
mv ffmpeg-4.4.2 ffmpeg-4.4.2-32
env CPPFLAGS=-std=gnu99 ${THOME}/build/dobuild -64only ffmpeg-4.4.2 -C "--strip=/usr/gnu/bin/strip --enable-shared --disable-static"
${THOME}/build/genpkg TRIBffmpeg ffmpeg-4.4.2-32 ffmpeg-4.4.2
