#!/bin/sh
#
# build tcl and tk together
#

${THOME}/build/unpack tk8.6.5-src
cd tk8.6.5/unix
env CFLAGS=-O ./configure --prefix=/usr
gmake -j 4
gmake install DESTDIR=/tmp/tk1
${THOME}/build/create_pkg TRIBtk /tmp/tk1

rm -fr /tmp/tk1 /tmp/tc1
