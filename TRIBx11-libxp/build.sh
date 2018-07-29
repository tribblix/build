#!/bin/sh
#
# needs libtool installed temporarily for the build
#
${THOME}/build/dobuild -64 libXp-1.0.3
${THOME}/build/genpkg TRIBx11-libxp libXp-1.0.3
