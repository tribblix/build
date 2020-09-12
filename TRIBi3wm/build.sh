#!/bin/sh
#
# i3 switched to autoconf, but a slightly funky way of doing it
#
env LIBS="-lsocket -lnsl -lgen" ${THOME}/build/dobuild i3-4.18.2 -M "-C i386-pc-solaris2.11" -C --enable-mans
cd i3-4.18.2
rm -fr /tmp/i3
cd i386-pc-solaris2.11
gmake install DESTDIR=/tmp/i3
cd ..
mkdir -p /tmp/i3/usr/share/man/man1
cp man/*.1 /tmp/i3/usr/share/man/man1
${THOME}/build/create_pkg TRIBi3wm /tmp/i3
rm -fr /tmp/i3
cd ..
