#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu gegl-0.3.14 -C "--without-libavformat --disable-introspection --disable-mmx --disable-sse"
${THOME}/build/genpkg TRIBlib-gegl gegl-0.3.14
