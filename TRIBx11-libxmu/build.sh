#!/bin/sh
#
env TRIBBLIX_CFLAGS=-I/usr/include/X11/xcms ${THOME}/build/dobuild -64 libXmu-1.2.0
${THOME}/build/genpkg TRIBx11-libxmu libXmu-1.2.0
