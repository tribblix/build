#!/bin/sh
#
${THOME}/build/unpack plan9port-20140306
cd plan9port
env PATH=/usr/gnu/bin:$PATH PLAN9_TARGET=/usr/versions/plan9 ./INSTALL -b
env PATH=/usr/gnu/bin:$PATH PLAN9_TARGET=/usr/versions/plan9 ./INSTALL -c
cd ..
mkdir -p t1/usr/versions
mv plan9port t1/usr/versions/plan9
${THOME}/build/create_pkg TRIBplan9 `pwd`/t1
rm -fr t1
