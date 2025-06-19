#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS="-I/usr/gnu/include -I/usr/gnu/include/ncursesw" TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`$THOME/build/getarch` -R/usr/gnu/lib/`$THOME/build/getarch`" ${THOME}/build/dobuild -A -64only brltty-6.7 -C "--without-midi-package --with-espeak_ng --without-espeak --with-curses=ncursesw"
${THOME}/build/genpkg -D INSTALL_ROOT TRIBbrltty brltty-6.7
