#!/bin/sh
#
${THOME}/build/unpack llnlxdir2_1_2
cd llnlxdir2_1_2/sources
make -f Makefile.alt CC=gcc LIBS="-lXm -lXt -lX11 -lsocket -lnsl" CFLAGS="-DSYSV"
rm -fr /tmp/xd1
mkdir -p /tmp/xd1/usr/bin
mkdir -p /tmp/xd1/usr/share/man/mann
mkdir -p /tmp/xd1/usr/share/X11/app-defaults
cp xdir /tmp/xd1/usr/bin
cp XDir.ad /tmp/xd1/usr/share/X11/app-defaults/XDir
chmod a+r /tmp/xd1/usr/share/X11/app-defaults/XDir
cp xdir.man /tmp/xd1/usr/share/man/mann/xdir.n
${THOME}/build/create_pkg TRIBxdir /tmp/xd1
