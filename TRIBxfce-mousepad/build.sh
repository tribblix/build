#!/bin/sh
#
# -L seems to be needed to fix crashes
#
env TRIBBLIX_CFLAGS=-I/usr/include/gio-unix-2.0 ${THOME}/build/dobuild -64only -gnu -L mousepad-0.5.9
${THOME}/build/genpkg TRIBxfce-mousepad mousepad-0.5.9
