#!/bin/sh
#
env CPPFLAGS=-I/usr/gnu/include LDFLAGS="-L/usr/gnu/lib -R/usr/gnu/lib" CC=gcc ${THOME}/build/dobuild tig-2.1.1 -C --with-ncurses
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/genpkg TRIBdev-versioning-tig tig-2.1.1
