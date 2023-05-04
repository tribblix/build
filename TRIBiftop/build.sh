#!/bin/sh
#
env TRIBBLIX_CFLAGS="-I/usr/gnu/include -I/usr/gnu/include/ncurses" TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`$THOME/build/getarch` -R/usr/gnu/lib/`$THOME/build/getarch`" ${THOME}/build/dobuild -64only iftop-0.17
${THOME}/build/genpkg TRIBiftop iftop-0.17
