#!/bin/sh
#
# needs libtool to build
#
env TRIBBLIX_CFLAGS=-I/usr/include/X11/xcms ${THOME}/build/dobuild -64 libXmu-1.1.3
${THOME}/build/genpkg TRIBx11-libxmu libXmu-1.1.3
