#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# a mirror of the source is at https://github.com/ncruces/dcraw
# but what you want is the tarball from https://dechifro.org/dcraw/archive/
# because that has the message files included
#
# the unpacked directory name doesn't match the tarball
#
${THOME}/build/unpack -n dcraw dcraw-9.28.0
cd dcraw-9.28.0
#
gcc -O4 -m64 -o dcraw dcraw.c -Wall -Wno-unused-result -Wno-array-bounds -Wno-maybe-uninitialized -Wno-unused-but-set-variable -lm -ljasper -ljpeg -llcms2 -DLOCALEDIR=\"/usr/share/locale\"
rm -fr /tmp/dr
mkdir -p /tmp/dr/usr/bin /tmp/dr/usr/share/man/man1
cp dcraw /tmp/dr/usr/bin
cp dcraw.1 /tmp/dr/usr/share/man/man1
${THOME}/build/TRIBdcraw/fixinstall /tmp/dr
${THOME}/build/create_pkg TRIBdcraw /tmp/dr
rm -fr /tmp/dr
