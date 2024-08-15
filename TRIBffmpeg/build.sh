#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# yasm (fallback to nasm) is a build-time dependency - zap install yasm
#
# documentation is fragile as it requires a specific version of texinfo,
# so disable it
#
# SDL2 requires a much older version than we have
#
env CPPFLAGS=-std=gnu99 ${THOME}/build/dobuild -64only ffmpeg-4.4.2 -C "--strip=/usr/gnu/bin/strip --enable-shared --disable-static --disable-doc"
${THOME}/build/genpkg TRIBffmpeg ffmpeg-4.4.2
