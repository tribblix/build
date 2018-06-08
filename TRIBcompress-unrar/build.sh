#!/bin/sh
#
${THOME}/build/unpack unrarsrc-5.6.4
cd unrar
gmake
rm -fr /tmp/uu
mkdir -p /tmp/uu/usr/bin
cp unrar /tmp/uu/usr/bin
${THOME}/build/create_pkg TRIBcompress-unrar /tmp/uu
cd ..
rm -fr /tmp/uu
