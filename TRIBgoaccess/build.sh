#!/bin/sh
#
# needs ncurses
# cannot enable utf8 as that requires ncursesw
# patch to disable use of gmtoff
#
env TRIBBLIX_CFLAGS="-std=gnu99 -I/usr/gnu/include" TRIBBLIX_LDFLAGS="-L/usr/gnu/lib -R/usr/gnu/lib" ${THOME}/build/dobuild goaccess-1.6.3 -C "--sysconfdir=/etc"
${THOME}/build/genpkg TRIBgoaccess goaccess-1.6.3
