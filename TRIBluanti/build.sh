#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
# there's a patch to (a) fix portability issues, and (b) not use "sun"
# as a variable name because it's a predefined identifier on Solaris/illumos
#

#
# it really is using ncurses
#

env TRIBBLIX_CFLAGS="-I/usr/gnu/include/ncursesw -I/usr/gnu/include" TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`$THOME/build/getarch` -R/usr/gnu/lib/`$THOME/build/getarch` -lsocket -lnsl -liconv -lncursesw" TRIBBLIX_CXXFLAGS="-I/usr/gnu/include/ncursesw -I/usr/gnu/include -fpermissive" $THOME/build/cmbuild +gnu -64only luanti-5.10.0 -C "-DRUN_IN_PLACE=FALSE -DCURSES_NEED_NCURSES=TRUE"

${THOME}/build/genpkg TRIBluanti luanti-5.10.0
