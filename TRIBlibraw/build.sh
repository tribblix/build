#!/bin/sh
#
${THOME}/build/dobuild -64 LibRaw-0.21.1 -L -C "--enable-jasper --disable-openmp --enable-shared --disable-static"
${THOME}/build/genpkg TRIBlibraw LibRaw-0.21.1
