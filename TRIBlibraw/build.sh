#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only LibRaw-0.22.1 -L -C "--enable-zlib --enable-lcms --enable-jpeg --disable-openmp --enable-shared --disable-static --disable-examples"
${THOME}/build/genpkg TRIBlibraw LibRaw-0.22.1
