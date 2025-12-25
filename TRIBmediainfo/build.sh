#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# mediainfo
#
# build zenlib libmediainfo and mediainfo together
# needs libtool installed so autogen.sh works
#
rm -fr ZenLib MediaInfoLib MediaInfo
${THOME}/build/unpack libzen_0.4.41
${THOME}/build/unpack libmediainfo_23.11
${THOME}/build/unpack mediainfo_23.11

zap install libtool

cd ZenLib/Project/GNU/Library
sh autogen.sh
env LDFLAGS="-m64" CFLAGS="-O -m64" CXXFLAGS="-O -m64 -fpermissive" ./configure --prefix=/usr --libdir=/usr/lib/`$THOME/build/getarch`
gmake -j 4
cd ../../../..

cd MediaInfoLib/Project/GNU/Library
sh autogen.sh
env LDFLAGS="-m64" CFLAGS="-O -m64" CXXFLAGS="-O -m64" ./configure --prefix=/usr --libdir=/usr/lib/`$THOME/build/getarch`
# limit the parallel make as it can explode
gmake -j 2
cd ../../../..

cd MediaInfo/Project/GNU/CLI
sh autogen.sh
env LDFLAGS="-m64" CFLAGS="-O -m64" CXXFLAGS="-O -m64" ./configure --prefix=/usr
gmake -j 4
cd ../../../..

rm -fr /tmp/zmi
cd ZenLib/Project/GNU/Library
gmake install DESTDIR=/tmp/zmi
cd ../../../..
cd MediaInfoLib/Project/GNU/Library
gmake install DESTDIR=/tmp/zmi
cd ../../../..
cd MediaInfo/Project/GNU/CLI
gmake install DESTDIR=/tmp/zmi
cd ../../../..

${THOME}/build/create_pkg TRIBmediainfo /tmp/zmi

rm -fr /tmp/zmi
