#!/bin/sh
#
# build tcl and tk together
#

#
# the tarbal is called 8.6.9.1, but it's 8.6.9 inside
#
${THOME}/build/unpack tk8.6.9.1-src
cd tk8.6.9/unix
env CFLAGS=-O ./configure --prefix=/usr
gmake -j 4
gmake install DESTDIR=/tmp/tk1

cd ../..

mkdir -p 64bit
cd 64bit
${THOME}/build/unpack tk8.6.9.1-src
cd tk8.6.9/unix
env CFLAGS=-O ./configure --prefix=/usr --enable-64bit --bindir=/usr/bin/`isainfo -k` --libdir=/usr/lib/`isainfo -k`
gmake -j 4
gmake install DESTDIR=/tmp/tk1
${THOME}/build/create_pkg TRIBtk /tmp/tk1

cd ../../..

rm -fr /tmp/tk1 /tmp/tc1
