#!/bin/sh
#
# yes, it's a bit messy
#
env CC=gcc PREFIX=/usr ${THOME}/build/dobuild zstd-1.4.9
mv zstd-1.4.9 zstd-1.4.9-32bit
env CC=gcc PREFIX=/usr CFLAGS=-m64 LDFLAGS=-m64 ${THOME}/build/dobuild zstd-1.4.9 
rm -fr /tmp/zzz
cd zstd-1.4.9-32bit
env CC=gcc PREFIX=/usr DESTDIR=/tmp/zzz gmake -C lib install
cd ..
cd zstd-1.4.9
env CC=gcc PREFIX=/usr DESTDIR=/tmp/zzz/64 gmake -C lib install
mv /tmp/zzz/64/usr/lib /tmp/zzz/usr/lib/`isainfo -k`
sed -i 's:/lib:/lib/64:' /tmp/zzz/usr/lib/`isainfo -k`/pkgconfig/libzstd.pc
rm -fr /tmp/zzz/64
mkdir -p /tmp/zzz/usr/bin
cp programs/zstd /tmp/zzz/usr/bin
cp programs/zstdgrep /tmp/zzz/usr/bin
cp programs/zstdless /tmp/zzz/usr/bin
mkdir -p /tmp/zzz/usr/share/man/man1
cp programs/zstd.1 /tmp/zzz/usr/share/man/man1
cp programs/zstdgrep.1 /tmp/zzz/usr/share/man/man1
cp programs/zstdless.1 /tmp/zzz/usr/share/man/man1
cd ..

$THOME/build/create_pkg TRIBcompress-zstd /tmp/zzz
rm -fr /tmp/zzz
