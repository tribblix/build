#!/bin/sh
#
${THOME}/build/unpack openjpeg-2.1.2
cd openjpeg-2.1.2
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr -DCMAKE_C_FLAGS="-std=gnu99 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64"
gmake -j 4
${THOME}/build/genpkg TRIBlib-openjpeg
cd ..
