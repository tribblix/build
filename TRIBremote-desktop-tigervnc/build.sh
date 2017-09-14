#!/bin/sh
#
# our own tigervnc
#
${THOME}/build/unpack tigervnc-1.8.0
cd tigervnc-1.8.0
mkdir build
cd build
cmake -G "Unix Makefiles" ..
gmake -k
rm -fr /tmp/tg
mkdir -p /tmp/tg/usr/bin
mkdir -p /tmp/tg/usr/share/man/man1
cp vncviewer/vncviewer /tmp/tg/usr/bin
cp ../vncviewer/vncviewer.man /tmp/tg/usr/share/man/man1/vncviewer.1
${THOME}/build/create_pkg TRIBremote-desktop-tigervnc /tmp/tg
rm -fr /tmp/tg
