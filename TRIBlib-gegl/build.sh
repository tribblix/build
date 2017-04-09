#!/bin/sh
#
${THOME}/build/dobuild -gnu gegl-0.2.0 -C --without-libavformat
${THOME}/build/genpkg TRIBlib-gegl gegl-0.2.0
