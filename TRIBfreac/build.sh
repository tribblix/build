#!/bin/sh
#
# gui incredibly slow to start - looping in iconv somewhere
#
# don't set libdir - it appears to dlopen() its shared objects
# and assumes they're in /usr/lib
#
${THOME}/build/unpack freac-1.1.7
cd freac-1.1.7
gmake -j 4 CC="gcc -m64" CXX="g++ -m64" prefix=/usr
cd ..

rm -fr /tmp/ifreac
cd freac-1.1.7
gmake install CC="gcc -m64" CXX="g++ -m64" prefix=/usr DESTDIR=/tmp/ifreac
cd ..
${THOME}/build/create_pkg TRIBfreac /tmp/ifreac
rm -fr /tmp/ifreac
