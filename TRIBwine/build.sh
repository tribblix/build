#!/bin/sh
#
# wine
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -gnu wine-1.8.3
cd wine-1.8.3
rm -fr /tmp/w1
env PATH=/usr/gnu/bin:$PATH gmake install DESTDIR=/tmp/w1
${THOME}/build/create_pkg TRIBwine /tmp/w1
cd ..
rm -fr /tmp/w1
