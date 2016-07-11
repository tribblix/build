#!/bin/sh
#
# [remove readline so it doesn't get pulled in]
#
${THOME}/build/unpack physfs-2.0.3
cd physfs-2.0.3
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr
gmake -j 8
${THOME}/build/genpkg TRIBphysfs
