#!/bin/sh
#
# ncurses - fix up RPATH
#
rm -fr /tmp/nc
env LD_RUN_PATH=/usr/gnu/lib/amd64 ${THOME}/build/dobuild +64 ncurses-5.9 -P /usr/gnu -C --with-shared
cd ncurses-5.9-64bit
gmake install CF_MFLAGS=DESTDIR=/tmp/nc
cd ..
env LD_RUN_PATH=/usr/gnu/lib ${THOME}/build/dobuild ncurses-5.9 -P /usr/gnu -C --with-shared
cd ncurses-5.9
gmake install CF_MFLAGS=DESTDIR=/tmp/nc
cd ..
${THOME}/build/create_pkg TRIBncurses /tmp/nc
rm -fr /tmp/nc
