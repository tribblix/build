#!/bin/sh
#
${THOME}/build/unpack -64 boca-1.0.7
cd boca-1.0.7
sed -i s:winegcc:XXwinegccXX: Makefile-options
gmake -j 4 CC=gcc prefix=/usr
cd ..
cd boca-1.0.7-64bit
sed -i s:winegcc:XXwinegccXX: Makefile-options
gmake -j 4 CC="gcc -m64" CXX="g++ -m64" prefix=/usr libdir=/usr/lib/`$THOME/build/getarch`
cd ..

rm -fr /tmp/iboca
cd boca-1.0.7
gmake install CC=gcc prefix=/usr DESTDIR=/tmp/iboca
cd ..
cd boca-1.0.7-64bit
gmake install CC="gcc -m64" CXX="g++ -m64" prefix=/usr libdir=/usr/lib/`$THOME/build/getarch` DESTDIR=/tmp/iboca
cd ..

${THOME}/build/create_pkg TRIBlibboca /tmp/iboca
rm -fr /tmp/iboca
