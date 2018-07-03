#!/bin/sh
#
${THOME}/build/unpack etsh-5.2.0
cd etsh-5.2.0
env PREFIX=/usr SYSCONFDIR=/etc ./configure
gmake PREFIX=/usr SYSCONFDIR=/etc MANDIR=/usr/share/man/man1 CC=gcc CFLAGS="-std=gnu99 -D__EXTENSIONS__" etshall
rm -fr /tmp/tsh
gmake INSTALL=ginstall DESTDIR=/tmp/tsh PREFIX=/usr SYSCONFDIR=/etc MANDIR=/usr/share/man/man1 CC=gcc CFLAGS="-std=gnu99 -D__EXTENSIONS__" install-etshall
${THOME}/build/create_pkg TRIBshell-etsh /tmp/tsh
rm -fr /tmp/tsh
cd ..
