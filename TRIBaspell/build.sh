#!/bin/sh
#
# aspell is a build dependency for dictionaries, it is not intended
# to be supported in its own right
#
# (which is why there is no user-friendly alias)
#
env CPPFLAGS="-I/usr/gnu/include" TRIBBLIX_LDFLAGS="-L/usr/gnu/lib -R/usr/gnu/lib" ${THOME}/build/dobuild aspell-0.60.8 -C "--sysconfdir=/etc --with-curses=ncurses"
mv aspell-0.60.8 aspell-0.60.8-32bit
env CPPFLAGS="-I/usr/gnu/include" TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`isainfo -k` -R/usr/gnu/lib/`isainfo -k`" ${THOME}/build/dobuild +64 aspell-0.60.8 -C "--sysconfdir=/etc --with-curses=ncurses"
mv aspell-0.60.8-32bit aspell-0.60.8
${THOME}/build/genpkg TRIBaspell aspell-0.60.8
