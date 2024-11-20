#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# check out release, look at src/version.cc to check the version string
#
git clone https://github.com/ninja-build/ninja.git
cd ninja
git checkout release
env CFLAGS=-m64 python3.12 ./configure.py --bootstrap
rm -fr /tmp/n1
mkdir -p /tmp/n1/usr/bin
cp ninja /tmp/n1/usr/bin
${THOME}/build/create_pkg TRIBninja /tmp/n1
rm -fr /tmp/n1
