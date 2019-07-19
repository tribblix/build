#!/bin/sh
#
# look at src/version.cc to check the version string
#
git clone git://github.com/ninja-build/ninja.git
cd ninja
git checkout release
./configure.py --bootstrap
rm -fr /tmp/n1
mkdir -p /tmp/n1/usr/bin
cp ninja /tmp/n1/usr/bin
${THOME}/build/create_pkg TRIBninja /tmp/n1
rm -fr /tmp/n1
