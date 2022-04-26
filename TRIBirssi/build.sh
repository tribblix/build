#!/bin/sh
#
#
#
env TRIBBLIX_CFLAGS=-I/usr/gnu/include/ncurses TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`$THOME/build/getarch` -R/usr/gnu/lib/`$THOME/build/getarch`" ${THOME}/build/dobuild -64only irssi-1.2.3 -C --with-perl=no
${THOME}/build/genpkg TRIBirssi irssi-1.2.3
