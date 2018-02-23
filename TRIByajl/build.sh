#!/bin/sh
#
${THOME}/build/unpack yajl-2.1.0
cd yajl-2.1.0
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr
gmake -j 4
gmake install DESTDIR=/tmp/y
${THOME}/build/create_pkg TRIByajl /tmp/y
rm -fr /tmp/y
