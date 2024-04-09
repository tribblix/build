#!/bin/sh
#
env CPPFLAGS=-I/usr/gnu/include TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`$THOME/build/getarch` -R/usr/gnu/lib/`$THOME/build/getarch`" CC=gcc ${THOME}/build/dobuild -64only tig-2.5.9 -C --with-ncurses
${THOME}/build/genpkg -gnu TRIBdev-versioning-tig tig-2.5.9
