#!/bin/sh
#
${THOME}/build/unpack unrarsrc-6.2.10
cd unrar
gmake -j 4
rm -fr /tmp/uu
mkdir -p /tmp/uu/usr/bin
cp unrar /tmp/uu/usr/bin
${THOME}/build/create_pkg TRIBcompress-unrar /tmp/uu
cd ..
rm -fr /tmp/uu
