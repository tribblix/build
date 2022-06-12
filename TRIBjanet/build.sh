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

#
# to install jpm you need to have built janet and installed it once
#
git clone --depth=1 https://github.com/janet-lang/jpm.git
cd jpm
env DESTDIR=/tmp/jj122 PREFIX=/usr janet bootstrap.janet

#
# to use jpm you need to override things to stop it trying to
# write into /usr, eg
#
# jpm --cc=gcc --cc-link=gcc --modpath=`pwd` --binpath=`pwd`/bin install joy
#

${THOME}/build/create_pkg TRIBjanet /tmp/jj122
rm -fr /tmp/jj122
