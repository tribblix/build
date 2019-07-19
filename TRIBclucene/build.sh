#!/bin/sh
#
# the clucene home page on sourceforge doesn't seem to point at the
# correct downloads, the regular project page there is much more useful
#
# we follow the blfs build and use the blfs patch
#
$THOME/build/unpack clucene-core-2.3.3.4
cd clucene-core-2.3.3.4
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr -DBUILD_CONTRIBS_LIB=ON ..
gmake -j
$THOME/build/genpkg TRIBclucene
