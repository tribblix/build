#!/bin/sh
#
# nasm (or yasm) is a build-time dependency - zap install nasm
#
env CPPFLAGS=-std=gnu99 ${THOME}/build/dobuild -64 ffmpeg-2.8.10 -C "--enable-shared --disable-static"
${THOME}/build/genpkg TRIBffmpeg ffmpeg-2.8.10
