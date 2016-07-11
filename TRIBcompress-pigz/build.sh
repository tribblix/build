#!/bin/sh
#
${THOME}/build/unpack pigz-2.3.3
cd pigz-2.3.3
gmake CC=gcc CFLAGS="-std=gnu99 -O3 -Wall -Wextra"
rm -fr /tmp/pp
mkdir -p /tmp/pp/usr/bin /tmp/pp/usr/share/man/man1
cp pigz /tmp/pp/usr/bin
ln /tmp/pp/usr/bin/pigz /tmp/pp/usr/bin/unpigz
cp pigz.1  /tmp/pp/usr/share/man/man1
echo ".so man1/pigz.1" > /tmp/pp/usr/share/man/man1/unpigz.1
${THOME}/build/create_pkg TRIBcompress-pigz /tmp/pp
rm -fr /tmp/pp
