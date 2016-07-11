#!/bin/sh
#
${THOME}/build/unpack lensfun-0.3.2
cd lensfun-0.3.2
mkdir cmake_build
cd cmake_build
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr
gmake
rm -fr /tmp/ll
gmake -k install DESTDIR=/tmp/ll
${THOME}/build/create_pkg TRIBlensfun /tmp/ll
rm -fr /tmp/ll
