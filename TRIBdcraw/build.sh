#!/bin/sh
#
${THOME}/build/unpack dcraw-9.28.0
cd dcraw
#
# manual because the directory name doesn't match the tarball
#
gpatch -p1 < ${THOME}/build/patches/dcraw.patch
#
gcc -O4 -o dcraw dcraw.c -Wall -Wno-unused-result -Wno-array-bounds -Wno-maybe-uninitialized -Wno-unused-but-set-variable -lm -ljasper -ljpeg -llcms2 -DLOCALEDIR=\"/usr/share/locale\"
rm -fr /tmp/dr
mkdir -p /tmp/dr/usr/bin /tmp/dr/usr/share/man/man1
cp dcraw /tmp/dr/usr/bin
cp dcraw.1 /tmp/dr/usr/share/man/man1
${THOME}/build/TRIBdcraw/fixinstall /tmp/dr
${THOME}/build/create_pkg TRIBdcraw /tmp/dr
rm -fr /tmp/dr
