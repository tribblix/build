#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# a bit fiddly as we only want hexdump for now
#
${THOME}/build/unpack util-linux-2.37.4
cd util-linux-2.37.4
./configure --prefix=/usr --bindir=/usr/bin --mandir=/usr/share/man --disable-dependency-tracking --without-python bin_PROGRAMS="hexdump" CFLAGS="-O -m64" LDFLAGS=-m64
gmake hexdump
rm -fr /tmp/tu
gmake install-binPROGRAMS DESTDIR=/tmp/tu bin_PROGRAMS="hexdump"
# manually otherwise it installs all the other man pages
mkdir -p /tmp/tu/usr/share/man/man1
/usr/bin/ginstall -c -m 644 text-utils/hexdump.1 /tmp/tu/usr/share/man/man1
${THOME}/build/create_pkg TRIBtext-utilities /tmp/tu
rm -fr /tmp/tu
