#!/bin/sh
#
# build tcl and tk together
#
rm -fr /tmp/tk1 /tmp/tc1
${THOME}/build/unpack tcl8.6.6-src
cd tcl8.6.6/unix
env CFLAGS=-O ./configure --prefix=/usr
env AWK=nawk gmake -j 4
env LD_LIBRARY_PATH=/tmp/tc1/usr/lib gmake install DESTDIR=/tmp/tc1
${THOME}/build/create_pkg TRIBtcl /tmp/tc1
