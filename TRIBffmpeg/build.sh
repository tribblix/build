#!/bin/sh
#
# nasm (or yasm) is a build-time dependency - zap install nasm
#
${THOME}/build/dobuild ffmpeg-2.8.7 -C "--enable-shared --disable-static"
${THOME}/build/genpkg TRIBffmpeg ffmpeg-2.8.7
