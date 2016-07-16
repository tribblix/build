#!/bin/sh
#
${THOME}/build/unpack mosaic27ck10
cd mosaic-ck
# Created makefiles/Makefile.illumos and edited Makefile
gmake illumos
rm -fr /tmp/mmm
mkdir -p /tmp/mmm/usr/bin
cp src/Mosaic /tmp/mmm/usr/bin
${THOME}/build/create_pkg TRIBmosaic /tmp/mmm
rm -fr /tmp/mmm
