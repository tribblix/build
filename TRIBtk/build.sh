#!/bin/sh
#
# build tcl and tk together
#
${THOME}/build/unpack tk8.6.14-src
cd tk8.6.14/unix
env CFLAGS=-O ./configure --prefix=/usr
gmake -j 4
gmake install DESTDIR=/tmp/tk1

cd ../..

mkdir -p 64bit
cd 64bit
${THOME}/build/unpack tk8.6.14-src
cd tk8.6.14/unix
env CFLAGS=-O ./configure --prefix=/usr --enable-64bit --bindir=/usr/bin/`isainfo -k` --libdir=/usr/lib/`isainfo -k`
gmake -j 4
gmake install DESTDIR=/tmp/tk1

cd ../../..

${THOME}/build/create_pkg TRIBtk /tmp/tk1

rm -fr /tmp/tk1 /tmp/tc1
