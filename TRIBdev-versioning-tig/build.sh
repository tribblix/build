#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env CPPFLAGS=-I/usr/gnu/include TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`$THOME/build/getarch` -R/usr/gnu/lib/`$THOME/build/getarch`" CC=gcc ${THOME}/build/dobuild -64only tig-2.5.11 -C --with-ncurses
${THOME}/build/genpkg -gnu TRIBdev-versioning-tig tig-2.5.11
