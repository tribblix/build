#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# aspell is a build dependency for dictionaries, it is not intended
# to be supported in its own right
#
env CPPFLAGS="-I/usr/gnu/include" TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`isainfo -k` -R/usr/gnu/lib/`isainfo -k`" ${THOME}/build/dobuild -64only aspell-0.60.8.1 -C "--sysconfdir=/etc --with-curses=ncurses"
${THOME}/build/genpkg TRIBaspell aspell-0.60.8.1
