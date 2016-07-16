#!/bin/sh
#
${THOME}/build/unpack dcraw-9.26.0
cd dcraw
# Add to dcraw.c
# #ifdef __sun
# #include <locale.h>
# #endif
gcc -O4 -o dcraw dcraw.c -Wall -Wno-unused-result -Wno-array-bounds -Wno-maybe-uninitialized -Wno-unused-but-set-variable -lm -ljasper -ljpeg -llcms2 -DLOCALEDIR=\"/usr/share/locale\"
rm -fr /tmp/dr
mkdir -p /tmp/dr/usr/bin /tmp/dr/usr/share/man/man1
cp dcraw /tmp/dr/usr/bin
cp dcraw.1 /tmp/dr/usr/share/man/man1
${THOME}/build/TRIBdcraw/fixinstall /tmp/dr
${THOME}/build/create_pkg TRIBdcraw /tmp/dr
rm -fr /tmp/dr
