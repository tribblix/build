#!/bin/sh
#
# 3.12 is 64-bit
#
# There's a preconf patch to disable epoll
#
# not yet default, so the default symlinks aren't created - see the
# ###FIXME### lines in the fixit file
#

#
# XPG6 to make _socket and _ssl work
# manually disable hstrerror so _socket is importable
#
# the old 3.11 way to enable curses didn't work, pull in ncurses
# which also pulls in readline
#

env TRIBBLIX_CFLAGS="-D_XOPEN_SOURCE=600 -D__EXTENSIONS__=1 -I/usr/gnu/include -I/usr/gnu/include/ncurses" TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`$THOME/build/getarch` -R/usr/gnu/lib/`$THOME/build/getarch`" ${THOME}/build/dobuild +64only Python-3.12.3 -P /usr/versions/python-3.12 -L -C "--enable-shared ac_cv_func_hstrerror=no"

#
# NB. TRIBv-python-312 must not be installed, or the make
# install step will get confused
#
# zap d TRIBv-python-312-tests TRIBv-python-312-tkinter TRIBv-python-312
#
# TODO: consider packaging pip + setuptools separately
#
${THOME}/build/genpkg TRIBv-python-312 Python-3.12.3