#!/bin/sh
#
# the download can't be grabbed by wget; use a browser
#
# there were missing files in ck11, restored in ck13
#
${THOME}/build/unpack mosaic27ck13
cd mosaic-ck

cp ${THOME}/build/patches/mosaic.Makefile Makefile
cp ${THOME}/build/patches/mosaic.Makefile.illumos makefiles/Makefile.illumos
# Created makefiles/Makefile.illumos and edited Makefile

gmake illumos
rm -fr /tmp/mmm
mkdir -p /tmp/mmm/usr/bin
cp src/Mosaic /tmp/mmm/usr/bin
${THOME}/build/create_pkg TRIBmosaic /tmp/mmm
rm -fr /tmp/mmm
