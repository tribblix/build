#!/bin/sh
#
#
#
${THOME}/build/unpack cmake-3.5.2
cd cmake-3.5.2
./bootstrap --prefix=/usr/versions/cmake-3.5
gmake -j 4
# [gmake test - all passed]
${THOME}/build/genpkg TRIBv-cmake-35
