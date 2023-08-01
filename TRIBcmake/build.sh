#!/bin/sh
#
#
#
${THOME}/build/unpack cmake-3.27.1
cd cmake-3.27.1
./bootstrap --prefix=/usr/versions/cmake-3.27 -- -DCMAKE_USE_OPENSSL=ON
gmake -j 4
# [gmake test - all passed]
${THOME}/build/genpkg TRIBcmake
cd ..
