#!/bin/sh
#
# [seems orphaned, no accurate idea where to get it from]
#
${THOME}/build/unpack openal-soft-1.15.1
cd openal-soft-1.15.1
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr
gmake -j 8
${THOME}/build/genpkg TRIBopenal
