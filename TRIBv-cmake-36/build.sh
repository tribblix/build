#!/bin/sh
#
#
#
${THOME}/build/unpack cmake-3.6.2
cd cmake-3.6.2
./bootstrap --prefix=/usr/versions/cmake-3.6
gmake -j 4
# [gmake test - all passed]
${THOME}/build/genpkg TRIBv-cmake-36
