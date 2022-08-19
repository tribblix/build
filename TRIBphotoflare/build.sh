#!/bin/sh
#
#
$THOME/build/unpack photoflare-1.6.10
cd photoflare-1.6.10
env PATH=/usr/versions/Qt-5/bin:$PATH qmake Photoflare.pro PREFIX=/usr INCLUDEPATH=/usr/include/ImageMagick-6 LIBS="-lMagick++-6.Q16 /usr/versions/gcc-10/lib/libgomp.a"
gmake -j 6
rm -fr /tmp/phf
gmake install INSTALL_ROOT=/tmp/phf
${THOME}/build/create_pkg TRIBphotoflare /tmp/phf
rm -fr /tmp/phf
