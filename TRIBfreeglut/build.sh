#!/bin/sh
#
${THOME}/build/unpack freeglut-3.0.0
cd freeglut-3.0.0
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr      \
      -DCMAKE_BUILD_TYPE=Release       \
      -DFREEGLUT_BUILD_DEMOS=OFF       \
      -DFREEGLUT_BUILD_STATIC_LIBS=OFF \
      ..
gmake -j 8
${THOME}/build/genpkg TRIBfreeglut
