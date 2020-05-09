#!/bin/sh
#
${THOME}/build/dobuild -64 libXau-1.0.9 -C "--enable-xthreads --with-pic"
${THOME}/build/genpkg TRIBx11-libxau libXau-1.0.9
