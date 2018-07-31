#!/bin/sh
#
#
#
${THOME}/build/unpack cmake-3.11.4
cd cmake-3.11.4
sed -i 's:DCMAKE_BOOTSTRAP=1:DCMAKE_BOOTSTRAP=1 -DCMAKE_USE_OPENSSL=ON:' bootstrap
./bootstrap --prefix=/usr/versions/cmake-3.11
gmake -j 4
# [gmake test - all passed]
${THOME}/build/genpkg TRIBcmake
cd ..
