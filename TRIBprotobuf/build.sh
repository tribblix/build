#!/bin/sh
#
# Default build is 64-bit
#

#
# old version for binary compatibility only needed on x86
#
${THOME}/build/unpack protobuf-2.6.1
cd protobuf-2.6.1
./configure --prefix=/usr
gmake -j 4
gmake install DESTDIR=/tmp/pbf
rm -fr /tmp/pbf/usr/include /tmp/pbf/usr/bin
rm -fr /tmp/pbf/usr/lib/amd64/pkgconfig
rm -f /tmp/pbf/usr/lib/amd64/*.{a,la,so}
cd ..

#
# current version
#
${THOME}/build/unpack protobuf-cpp-3.20.1
cd protobuf-3.20.1
./configure --prefix=/usr
gmake -j 4
gmake install DESTDIR=/tmp/pbf
cd ..

${THOME}/build/create_pkg TRIBprotobuf /tmp/pbf
