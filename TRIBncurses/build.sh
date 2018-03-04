#!/bin/sh
#
# ncurses - fix up RPATH
#
rm -fr /tmp/nc
#
# first make and install the old abi-compatible version
#
env LD_RUN_PATH=/usr/gnu/lib/`isainfo -k` ${THOME}/build/dobuild +64 ncurses-6.1 -P /usr/gnu -C "--with-shared --with-abi-version=5"
cd ncurses-6.1-64bit
gmake install DESTDIR=/tmp/nc
cd ..
env LD_RUN_PATH=/usr/gnu/lib ${THOME}/build/dobuild ncurses-6.1 -P /usr/gnu -C "--with-shared --with-abi-version=5"
cd ncurses-6.1
gmake install DESTDIR=/tmp/nc
cd ..
#
# now the new version
#
env LD_RUN_PATH=/usr/gnu/lib/`isainfo -k` ${THOME}/build/dobuild +64 ncurses-6.1 -P /usr/gnu -C --with-shared
cd ncurses-6.1-64bit
gmake install DESTDIR=/tmp/nc
cd ..
env LD_RUN_PATH=/usr/gnu/lib ${THOME}/build/dobuild ncurses-6.1 -P /usr/gnu -C --with-shared
cd ncurses-6.1
gmake install DESTDIR=/tmp/nc
cd ..
${THOME}/build/create_pkg TRIBncurses /tmp/nc
rm -fr /tmp/nc
