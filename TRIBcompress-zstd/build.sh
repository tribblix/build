#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# yes, it's a bit messy
#
# we shipped 1.4.9 previously, ZSTD_LIB_DEPRECATED=1 enables the functions
# that were present then but were deprecated in 1.5.0
#
env CC=gcc PREFIX=/usr ${THOME}/build/dobuild zstd-1.5.6 -M "ZSTD_LIB_DEPRECATED=1 ZSTD_LIB_DICTBUILDER=0"
mv zstd-1.5.6 zstd-1.5.6-32bit
env CC=gcc PREFIX=/usr CFLAGS=-m64 LDFLAGS=-m64 ${THOME}/build/dobuild zstd-1.5.6 -M "ZSTD_LIB_DEPRECATED=1 ZSTD_LIB_DICTBUILDER=0"
rm -fr /tmp/zzz
cd zstd-1.5.6-32bit
env CC=gcc PREFIX=/usr DESTDIR=/tmp/zzz gmake -C lib install
cd ..
cd zstd-1.5.6
env CC=gcc PREFIX=/usr DESTDIR=/tmp/zzz/64 gmake -C lib install
mv /tmp/zzz/64/usr/lib /tmp/zzz/usr/lib/`isainfo -k`
sed -i 's:/lib:/lib/64:' /tmp/zzz/usr/lib/`isainfo -k`/pkgconfig/libzstd.pc
rm -fr /tmp/zzz/64
env CC=gcc PREFIX=/usr DESTDIR=/tmp/zzz gmake -C programs install
cd ..

$THOME/build/create_pkg TRIBcompress-zstd /tmp/zzz
rm -fr /tmp/zzz
