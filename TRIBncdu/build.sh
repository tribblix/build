#!/bin/sh
#
#
#
env TRIBBLIX_CFLAGS="-I/usr/gnu/include/ncurses -I/usr/gnu/include" TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`${THOME}/build/getarch` -R/usr/gnu/lib/`${THOME}/build/getarch`" ${THOME}/build/dobuild -64only ncdu-1.19
${THOME}/build/genpkg TRIBncdu ncdu-1.19
