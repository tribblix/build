#!/bin/sh
#
# needs the spread toolkit
#
${THOME}/build/unpack wackamole-2.1.5
cd wackamole-2.1.5
./configure '--prefix=/opt/tribblix/wackamole' '--with-cppflags=-I/opt/tribblix/spread/include' '--with-ldflags=-L/opt/tribblix/spread/lib -R/opt/tribblix/spread/lib' '--with-cflags=-fPIC'
gmake -j 8
rm -fr /tmp/gg
gmake install DESTDIR=/tmp/gg
${THOME}/build/create_pkg TRIBblix-wackamole /tmp/gg
rm -fr /tmp/gg
