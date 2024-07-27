#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# lz4
#
env CC=gcc PREFIX=/usr ${THOME}/build/dobuild lz4-1.9.3
mv lz4-1.9.3 lz4-1.9.3-32bit
env CC=gcc PREFIX=/usr CPPFLAGS=-m64 LDFLAGS=-m64 ${THOME}/build/dobuild lz4-1.9.3
rm -fr /tmp/zzy
cd lz4-1.9.3-32bit
env CC=gcc PREFIX=/usr gmake install DESTDIR=/tmp/zzy
cd ..
cd lz4-1.9.3
env CC=gcc PREFIX=/usr gmake install DESTDIR=/tmp/zzy/64
cd ..
mv /tmp/zzy/64/usr/lib /tmp/zzy/usr/lib/`isainfo -k`
rm -fr /tmp/zzy/usr/bin
mv /tmp/zzy/64/usr/bin /tmp/zzy/usr/bin
rm -fr /tmp/zzy/64
sed -i 's:/lib:/lib/64:' /tmp/zzy/usr/lib/`isainfo -k`/pkgconfig/liblz4.pc
env CC=gcc PREFIX=/usr ${THOME}/build/create_pkg TRIBcompress-lz4 /tmp/zzy
rm -fr /tmp/zzy
