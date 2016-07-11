#!/bin/sh
#
${THOME}/build/unpack libical-1.0.1
cd libical-1.0.1
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DSHARED_ONLY=yes ..
gmake -j 4
gmake install DESTDIR=/tmp/ic
${THOME}/build/create_pkg TRIBlibical /tmp/ic
