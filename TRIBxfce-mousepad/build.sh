#!/bin/sh
#
env TRIBBLIX_CFLAGS=-I/usr/include/gio-unix-2.0 ${THOME}/build/dobuild -gnu mousepad-0.5.3
${THOME}/build/genpkg TRIBxfce-mousepad mousepad-0.5.3
