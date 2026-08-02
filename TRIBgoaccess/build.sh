#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs ncurses
# patch to disable use of gmtoff
#
env TRIBBLIX_CFLAGS="-std=gnu99 -I/usr/gnu/include -I/usr/gnu/include/ncursesw" TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`${THOME}/build/getarch` -R/usr/gnu/lib/`${THOME}/build/getarch`" ${THOME}/build/dobuild -A -64only goaccess-1.11 -C "--sysconfdir=/etc --enable-utf8"
${THOME}/build/genpkg TRIBgoaccess goaccess-1.11
