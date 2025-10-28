#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# use the 'legacy' 1.x branch; 2.x requires zig
#
env TRIBBLIX_CFLAGS="-I/usr/gnu/include/ncursesw -I/usr/gnu/include" TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`${THOME}/build/getarch` -R/usr/gnu/lib/`${THOME}/build/getarch`" ${THOME}/build/dobuild -64only ncdu-1.22
${THOME}/build/genpkg TRIBncdu ncdu-1.22
