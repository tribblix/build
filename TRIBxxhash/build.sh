#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack +64 xxHash-0.8.3
cd xxHash-0.8.3-64bit
gmake CC=gcc MOREFLAGS=-m64 PREFIX=/usr
cd ..
#
# manual install
#
rm -fr /tmp/xx
cd xxHash-0.8.3-64bit
gmake install CC=gcc MOREFLAGS=-m64 DESTDIR=/tmp/xx PREFIX=/usr
cd ..
mkdir /tmp/xx/usr/lib/`${THOME}/build/getarch`
mv /tmp/xx/usr/lib/lib* /tmp/xx/usr/lib/`${THOME}/build/getarch`
mv /tmp/xx/usr/lib/pkgconfig /tmp/xx/usr/lib/`${THOME}/build/getarch`
sed -i s:/lib:/lib/`${THOME}/build/getarch`: /tmp/xx/usr/lib/`${THOME}/build/getarch`/pkgconfig/libxxhash.pc
${THOME}/build/create_pkg TRIBxxhash /tmp/xx
rm -fr /tmp/xx
