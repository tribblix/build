#!/bin/sh
#
${THOME}/build/dobuild -64 jasper-1.900.1 -C "--enable-shared --disable-static"
${THOME}/build/genpkg TRIBgraphics-jasper jasper-1.900.1
