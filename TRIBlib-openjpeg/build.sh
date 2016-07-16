#!/bin/sh
#
${THOME}/build/unpack openjpeg-2.1.0
cd openjpeg-2.1.0
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr
gmake -j 4
gmake install DESTDIR=/tmp/opj
${THOME}/build/create_pkg TRIBlib-openjpeg /tmp/opj
