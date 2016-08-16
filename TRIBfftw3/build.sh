#!/bin/sh
#
# use the same flags to configure as OI
# --enable-float for fftw3f
#
${THOME}/build/dobuild -64 fftw-3.3.5 -C "--enable-float --enable-threads --enable-shared --disable-static --with-combined-threads"
${THOME}/build/genpkg TRIBfftw3 fftw-3.3.5
