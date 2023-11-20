#!/bin/sh
#
# webp
#
${THOME}/build/dobuild -64 libwebp-1.3.2 -C "--disable-gl"
${THOME}/build/genpkg TRIBlibwebp libwebp-1.3.2
