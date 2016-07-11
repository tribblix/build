#!/bin/sh
#
# update/rebuild i3:
#
${THOME}/build/unpack i3-4.11
cd i3-4.11
${THOME}/build/patches/i3-4.11.preconf
gmake CC=gcc
gmake -C man
rm -fr /tmp/i3
gmake CC=gcc DESTDIR=/tmp/i3 INSTALL=ginstall install
mkdir -p /tmp/i3/usr/share/man/man1
cp man/*.1 /tmp/i3/usr/share/man/man1
${THOME}/build/create_pkg TRIBi3wm /tmp/i3
rm -fr /tmp/i3
