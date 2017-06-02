#!/bin/sh
#
# needs ncurses
#
env TRIBBLIX_CFLAGS="-std=gnu99 -I/usr/gnu/include" TRIBBLIX_LDFLAGS="-L/usr/gnu/lib -R/usr/gnu/lib" ${THOME}/build/dobuild goaccess-1.2 -C --sysconfdir=/etc
${THOME}/build/genpkg TRIBgoaccess goaccess-1.2
