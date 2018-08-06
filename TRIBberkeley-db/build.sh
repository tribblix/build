#!/bin/sh
#
# this library is built specifically for known consumers such as postfix
# it's not a general purpose library
#
${THOME}/build/unpack db-5.3.28
cd db-5.3.28/build_unix
../dist/configure --prefix=/usr --disable-static --disable-java --disable-jdbc --disable-tcl --disable-sql
gmake -j
rm -fr /tmp/bdb
gmake install DESTDIR=/tmp/bdb
cd ../..
${THOME}/build/create_pkg TRIBberkeley-db /tmp/bdb
rm -fr /tmp/bdb
