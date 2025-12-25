#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

$THOME/build/unpack mupdf-1.23.11-source
cd mupdf-1.23.11-source

sed -i -e s:Linux:SunOS: -e '/LDREMOVEUNREACH/d' Makerules
sed -i 's:install -:ginstall -:' Makefile

gmake -j 4 CC="gcc -m64" CXX="g++ -m64" HAVE_OBJCOPY=no HAVE_GLUT=no USE_SYSTEM_LIBJPEG=yes USE_SYSTEM_OPENJPEG=yes USE_SYSTEM_ZLIB=yes USE_SYSTEM_CURL=yes USE_SYSTEM_FREETYPE=yes USE_SYSTEM_HARFBUZZ=yes shared=yes build=release prefix=/usr libdir=/usr/lib/`$THOME/build/getarch`

gmake -j 4 CC="gcc -m64" CXX="g++ -m64" HAVE_OBJCOPY=no HAVE_GLUT=no USE_SYSTEM_LIBJPEG=yes USE_SYSTEM_OPENJPEG=yes USE_SYSTEM_ZLIB=yes USE_SYSTEM_CURL=yes USE_SYSTEM_FREETYPE=yes USE_SYSTEM_HARFBUZZ=yes shared=yes build=release prefix=/usr libdir=/usr/lib/`$THOME/build/getarch` install DESTDIR=/tmp/muu

${THOME}/build/create_pkg TRIBmupdf /tmp/muu
rm -fr /tmp/muu
