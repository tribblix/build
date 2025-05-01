#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS="-fcommon -I/usr/gnu/include -I/usr/gnu/include/ncursesw" TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`$THOME/build/getarch` -R/usr/gnu/lib/`$THOME/build/getarch`" ${THOME}/build/dobuild -64only iftop-1.0pre4
${THOME}/build/genpkg TRIBiftop iftop-1.0pre4
