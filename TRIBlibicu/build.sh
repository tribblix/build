#!/bin/sh
#
# [in tarballs, rename the tarball to icu.tar.gz]
mv icu4c-50_1_2-src.tgz icu.tar.gz
env TRIBBLIX_CXXFLAGS=-D_XPG6 ${THOME}/build/dobuild -64 icu -S source
rm -fr /tmp/ii
cd icu-64bit/source
gmake install DESTDIR=/tmp/ii
cd ../../icu/source
gmake install DESTDIR=/tmp/ii
cd ../..
${THOME}/build/create_pkg TRIBlibicu /tmp/ii
