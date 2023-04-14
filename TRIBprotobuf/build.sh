#!/bin/sh
#
# Default build is 64-bit
#
${THOME}/build/unpack -64 protobuf-2.6.1
cd protobuf-2.6.1-64bit
./configure --prefix=/usr --bindir=/usr/bin/`$THOME/build/getarch`
gmake -j 4
gmake install DESTDIR=/tmp/pbf
cd ../protobuf-2.6.1
./configure --prefix=/usr --disable-64bit-solaris
gmake -j 4
gmake install DESTDIR=/tmp/pbf
${THOME}/build/create_pkg TRIBprotobuf /tmp/pbf
