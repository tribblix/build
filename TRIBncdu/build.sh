#!/bin/sh
#
#
#
env TRIBBLIX_CFLAGS="-I/usr/gnu/include/ncurses -I/usr/gnu/include" TRIBBLIX_LDFLAGS="-L/usr/gnu/lib -R/usr/gnu/lib" ${THOME}/build/dobuild ncdu-1.13
${THOME}/build/genpkg TRIBncdu ncdu-1.13
