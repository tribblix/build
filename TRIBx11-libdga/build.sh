#!/bin/sh
#
# pull the source out of the repo
#
rm -fr libdga
cp -r ${THOME}/build/patches/libdga-src libdga
cd libdga
make CC=gcc
rm -fr /tmp/ldga
make install DESTDIR=/tmp/ldga libdir=/usr/lib INSTALL=cp
${THOME}/build/create_pkg TRIBx11-libdga /tmp/ldga
rm -fr /tmp/ldga
cd ..
