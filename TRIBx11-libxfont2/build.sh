#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libXfont2-2.0.9 +P /usr/lib/xorg -C "--enable-freetype --disable-fc --enable-builtins --with-bzip2"
${THOME}/build/genpkg TRIBx11-libxfont2 libXfont2-2.0.9
