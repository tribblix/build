#!/bin/sh
#
${THOME}/build/unpack smooth-0.9.10
cd smooth-0.9.10
gmake -j 4 CC="gcc -m64" CXX="g++ -m64" prefix=/usr libdir=/usr/lib/`$THOME/build/getarch`
cd ..

rm -fr /tmp/smth
cd smooth-0.9.10
gmake install CC="gcc -m64" CXX="g++ -m64" prefix=/usr libdir=/usr/lib/`$THOME/build/getarch` DESTDIR=/tmp/smth
cd ..

${THOME}/build/create_pkg TRIBlibsmooth /tmp/smth
rm -fr /tmp/smth
