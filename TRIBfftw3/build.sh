#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# use the same flags to configure as OI
# --enable-float for fftw3f
#
${THOME}/build/dobuild -64only fftw-3.3.10 -C "--enable-float --enable-threads --enable-shared --disable-static --with-combined-threads"
${THOME}/build/genpkg TRIBfftw3 fftw-3.3.10
