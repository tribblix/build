#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# 3.13 is 64-bit
#
# There's a preconf patch to disable epoll
#

#
# XPG6 to make _socket and _ssl work
# manually disable hstrerror so _socket is importable
#
# the old 3.11 way to enable curses didn't work, pull in ncurses
# which also pulls in readline
#

#
# there's a separate build script for sparc
#

env CURSES_CFLAGS="-DHAVE_NCURSESW -D_XOPEN_SOURCE_EXTENDED" TRIBBLIX_CFLAGS="-D_XOPEN_SOURCE=600 -D__EXTENSIONS__=1 -I/usr/gnu/include -I/usr/gnu/include/ncursesw" TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`$THOME/build/getarch` -R/usr/gnu/lib/`$THOME/build/getarch`" ${THOME}/build/dobuild +64only Python-3.13.11 -P /usr/versions/python-3.13 -L -C "--enable-shared ac_cv_func_hstrerror=no --enable-optimizations --without-ensurepip"

#
# the tests and tkinter packages will be split out and created as part of
# the packaging step
#
${THOME}/build/genpkg TRIBv-python-313 Python-3.13.11
