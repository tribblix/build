#!/bin/sh
#
# [in tarballs, rename the tarball to icu.tar.gz]
# mv icu4c-68_2-src.tgz icu.tar.gz
#
# the old 50.1 shared libaries are copied in by the fixit step
# for compatibility
#
${THOME}/build/dobuild -64 icu -S source
rm -fr /tmp/ii
cd icu-64bit/source
gmake install DESTDIR=/tmp/ii
cd ../../icu/source
gmake install DESTDIR=/tmp/ii
cd ../..
${THOME}/build/create_pkg TRIBlibicu /tmp/ii
rm -fr /tmp/ii
