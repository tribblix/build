#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs ncurses
# cannot enable utf8 as that requires ncursesw
# patch to disable use of gmtoff
#
env TRIBBLIX_CFLAGS="-std=gnu99 -I/usr/gnu/include" TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`${THOME}/build/getarch` -R/usr/gnu/lib/`${THOME}/build/getarch`" ${THOME}/build/dobuild -64only goaccess-1.9.1 -C "--sysconfdir=/etc"
${THOME}/build/genpkg TRIBgoaccess goaccess-1.9.1
