#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/unpack photoflare-1.6.13
cd photoflare-1.6.13
env PATH=/usr/versions/Qt-5/bin/`${THOME}/build/getarch`:$PATH qmake Photoflare.pro PREFIX=/usr INCLUDEPATH=/usr/include/GraphicsMagick LIBS="-lGraphicsMagick++ /usr/versions/gcc-10/lib/`${THOME}/build/getarch`/libgomp.a"
gmake -j 6
rm -fr /tmp/phf
gmake install INSTALL_ROOT=/tmp/phf
${THOME}/build/create_pkg TRIBphotoflare /tmp/phf
rm -fr /tmp/phf
