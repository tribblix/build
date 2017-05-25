#!/bin/sh
#
#
# this is a stub package that is currently only for sparc
# it supplies the various core bits of X that opensxce missed
# out, and the flags and fixes are specific to the sparc build
#
env XORG_LIBS=-L/usr/lib XORG_CFLAGS=-I/usr/openwin/server/include ${THOME}/build/dobuild rgb-1.0.6 -C "--with-rgb-db-type=ndbm --with-rgb-db-dir=/usr/lib/X11/rgb"
${THOME}/build/genpkg TRIBx11-x11-server-utilities rgb-1.0.6
