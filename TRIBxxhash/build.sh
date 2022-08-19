#!/bin/sh
#
${THOME}/build/unpack -64 xxHash-0.8.1
cd xxHash-0.8.1
gmake CC=gcc PREFIX=/usr
cd ..
cd xxHash-0.8.1-64bit
gmake CC=gcc MOREFLAGS=-m64 PREFIX=/usr
cd ..
#
# manual install
#
rm -fr /tmp/xx /tmp/xx2
cd xxHash-0.8.1
gmake install CC=gcc DESTDIR=/tmp/xx PREFIX=/usr
cd ..
cd xxHash-0.8.1-64bit
gmake install CC=gcc MOREFLAGS=-m64 DESTDIR=/tmp/xx2 PREFIX=/usr
cd ..
rm -fr /tmp/xx/usr/bin
mv /tmp/xx2/usr/bin /tmp/xx/usr
mkdir /tmp/xx/usr/lib/`${THOME}/build/getarch`
mv /tmp/xx2/usr/lib/* /tmp/xx/usr/lib/`${THOME}/build/getarch`
sed -i s:/lib:/lib/`${THOME}/build/getarch`: /tmp/xx/usr/lib/`${THOME}/build/getarch`/pkgconfig/libxxhash.pc
rm -fr /tmp/xx2
${THOME}/build/create_pkg TRIBxxhash /tmp/xx
rm -fr /tmp/xx
