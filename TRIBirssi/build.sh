#!/bin/sh
#
#
#
env TRIBBLIX_CFLAGS=-I/usr/gnu/include/ncurses TRIBBLIX_LDFLAGS="-L/usr/gnu/lib -R/usr/gnu/lib" ${THOME}/build/dobuild irssi-1.0.1 -C --with-perl=no
${THOME}/build/genpkg TRIBirssi irssi-1.0.1
