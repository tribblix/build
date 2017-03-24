#!/bin/sh
#
# the download can't be grabbed by wget; use a browser
# you'll need the ck10 and ck11 downloads as some files are missing from ck11
# rename the download
#  mv mosaic27ck11-src.zip mosaic27ck11.zip
#
${THOME}/build/unpack mosaic27ck11
cd mosaic-ck
cp ${THOME}/build/patches/mosaic.Makefile Makefile
cp ${THOME}/build/patches/mosaic.Makefile.illumos makefiles/Makefile.illumos
# Created makefiles/Makefile.illumos and edited Makefile
#
# copy the missing xpm files
#
${THOME}/build/unpack mosaic27ck10
mv mosaic-ck/src/pixmaps/* src/pixmaps
rm -fr mosaic-ck

gmake illumos
rm -fr /tmp/mmm
mkdir -p /tmp/mmm/usr/bin
cp src/Mosaic /tmp/mmm/usr/bin
${THOME}/build/create_pkg TRIBmosaic /tmp/mmm
rm -fr /tmp/mmm
