#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# ncurses - fix up RPATH
#
rm -fr /tmp/nc
#
# no more 32-bit consumers
#
# we ship ncursesw and symlink ncurses to it
# they aren't technically binary-compatible, and have different SONAME
# but surprisingly this seems to work
#
env LD_RUN_PATH=/usr/gnu/lib/`isainfo -k` ${THOME}/build/dobuild +64 ncurses-6.4 -P /usr/gnu -C "--with-shared --enable-widec"
cd ncurses-6.4-64bit
env LD_RUN_PATH=/usr/gnu/lib/`isainfo -k` gmake install DESTDIR=/tmp/nc
cd ..
#env LD_RUN_PATH=/usr/gnu/lib ${THOME}/build/dobuild ncurses-6.4 -P /usr/gnu -C "--with-shared --enable-widec"
#cd ncurses-6.4
#env LD_RUN_PATH=/usr/gnu/lib gmake install DESTDIR=/tmp/nc
#cd ..
${THOME}/build/create_pkg TRIBncurses /tmp/nc
rm -fr /tmp/nc
