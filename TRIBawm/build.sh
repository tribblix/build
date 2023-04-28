#!/bin/sh
#
${THOME}/build/unpack awm2pl9-pct2
cd awm2pl9-pct2
make nox11copy
make
mkdir -p /tmp/awm/usr/bin
mkdir -p /tmp/awm/usr/lib/X11/awm
mkdir -p /tmp/awm/usr/share/man/man1
cp awm /tmp/awm/usr/bin
cp awm.man /tmp/awm/usr/share/man/man1/awm.1
cp -pr awm.Xdefaults system.awmrc bitmaps /tmp/awm/usr/lib/X11/awm
${THOME}/build/create_pkg TRIBawm /tmp/awm
