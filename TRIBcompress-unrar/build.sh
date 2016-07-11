#!/bin/sh
#
${THOME}/build/unpack unrarsrc-5.4.2
cd unrar
gmake
rm -fr /tmp/uu
mkdir -p /tmp/uu/usr/bin
cp unrar /tmp/uu/usr/bin
${THOME}/build/create_pkg TRIBcompress-unrar /tmp/uu /tmp/pct
rm -fr /tmp/uu
