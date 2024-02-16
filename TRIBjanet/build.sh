#!/bin/sh
#
#
${THOME}/build/unpack janet-1.32.1
cd janet-1.32.1

# this updates COMMON_CFLAGS so it applies to both the bootstrap
# and the build
sed -i 's:-fPIC:-fPIC -D__EXTENSIONS__:' Makefile
# syntax is gnu
sed -i 's:strip :/usr/gnu/bin/strip :' Makefile

gmake CC=gcc PREFIX=/usr CLIBS="-lsocket -lnsl -lm"
#
# optional, but this ought to pass
#
#gmake test CC=gcc PREFIX=/usr CLIBS="-lsocket -lnsl -lm"
#
rm -fr /tmp/jj126
gmake install DESTDIR=/tmp/jj126 CC=gcc PREFIX=/usr CLIBS="-lsocket -lnsl -lm"

#
# to install jpm you need to have built janet and installed it once
#
git clone --depth=1 https://github.com/janet-lang/jpm.git
cd jpm
env DESTDIR=/tmp/jj126 PREFIX=/usr janet bootstrap.janet

#
# to use jpm you need to override things to stop it trying to
# write into /usr, eg
#
# jpm --cc=gcc --cc-link=gcc --modpath=`pwd` --binpath=`pwd`/bin install joy
#

${THOME}/build/create_pkg TRIBjanet /tmp/jj126
rm -fr /tmp/jj126
