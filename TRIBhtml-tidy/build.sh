#!/bin/sh
#
${THOME}/build/unpack tidy-html5-5.4.0
cd tidy-html5-5.4.0
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX:PATH=/usr
gmake -j
${THOME}/build/genpkg TRIBhtml-tidy
