#!/bin/sh
#
# needs libgmp
#
# the build script we copy in disables xpce, which drags in a lot of
# dependencies
#
${THOME}/build/unpack swipl-7.7.20
cd swipl-7.7.20
cp ${THOME}/build/patches/build.swipl build
./build
rm -fr /tmp/swp
./build --install DESTDIR=/tmp/swp
cd ..
${THOME}/build/create_pkg TRIBswi-prolog /tmp/swp
rm -fr /tmp/swp
