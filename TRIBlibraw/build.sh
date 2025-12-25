#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only LibRaw-0.21.1 -L -C "--enable-jasper --enable-zlib --enable-lcms --disable-openmp --enable-shared --disable-static --disable-examples"
${THOME}/build/genpkg TRIBlibraw LibRaw-0.21.1
