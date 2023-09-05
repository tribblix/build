#!/bin/sh
#
#
#
${THOME}/build/unpack cmake-3.27.4
cd cmake-3.27.4
./bootstrap --prefix=/usr/versions/cmake-3.27 -- -DCMAKE_USE_OPENSSL=ON
gmake -j 4
# [gmake test - all passed]
${THOME}/build/genpkg TRIBcmake
cd ..
