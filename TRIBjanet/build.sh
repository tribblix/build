#!/bin/sh
#
#
${THOME}/build/unpack janet-1.22.0
cd janet-1.22.0
gmake CC=gcc PREFIX=/usr CLIBS="-lsocket -lnsl -lm" CFLAGS="-O2 -D__EXTENSIONS__"
#
# optional, but this ought to pass
#
#gmake test CC=gcc PREFIX=/usr CLIBS="-lsocket -lnsl -lm" CFLAGS="-O2 -D__EXTENSIONS__"
#
gmake install DESTDIR=/tmp/jj122 CC=gcc PREFIX=/usr CLIBS="-lsocket -lnsl -lm" CFLAGS="-O2 -D__EXTENSIONS__"
${THOME}/build/create_pkg TRIBjanet /tmp/jj122
rm -fr /tmp/jj122
