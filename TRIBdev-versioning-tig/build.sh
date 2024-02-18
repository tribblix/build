#!/bin/sh
#
env CPPFLAGS=-I/usr/gnu/include TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`$THOME/build/getarch` -R/usr/gnu/lib/`$THOME/build/getarch`" CC=gcc ${THOME}/build/dobuild -64only tig-2.5.8 -C --with-ncurses
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/genpkg TRIBdev-versioning-tig tig-2.5.8
