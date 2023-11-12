#!/bin/sh
#
${THOME}/build/dobuild -64 SDL2_ttf-2.0.18 -C "--enable-freetype-builtin=no --enable-harfbuzz=yes --enable-harfbuzz-builtin=no"
${THOME}/build/genpkg TRIBlibsdl2-ttf SDL2_ttf-2.0.18
