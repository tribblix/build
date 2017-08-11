#!/bin/sh
#
# build tcl and tk together
#
rm -fr /tmp/tk1 /tmp/tc1
${THOME}/build/unpack tcl8.6.7-src
cd tcl8.6.7/unix
env CFLAGS=-O ./configure --prefix=/usr
env AWK=nawk gmake -j 4
env LD_LIBRARY_PATH=/tmp/tc1/usr/lib gmake install DESTDIR=/tmp/tc1

cd ../..

mkdir -p 64bit
cd 64bit
${THOME}/build/unpack tcl8.6.7-src
cd tcl8.6.7/unix
env CFLAGS=-O ./configure --prefix=/usr --enable-64bit --bindir=/usr/bin/amd64 --libdir=/usr/lib/amd64
env AWK=nawk gmake -j 4
env LD_LIBRARY_PATH=/tmp/tc1/usr/lib gmake install DESTDIR=/tmp/tc1

cd ../../..

${THOME}/build/create_pkg TRIBtcl /tmp/tc1
