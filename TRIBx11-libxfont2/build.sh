#!/bin/sh
#
${THOME}/build/dobuild -64 libXfont2-2.0.5 +P /usr/lib/xorg -C "--enable-freetype --enable-fc --enable-builtins --with-bzip2"
${THOME}/build/genpkg TRIBx11-libxfont2 libXfont2-2.0.5
