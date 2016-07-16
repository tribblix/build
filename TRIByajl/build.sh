#!/bin/sh
#
${THOME}/build/unpack lloyd-yajl-2.1.0-0-ga0ecdde
cd lloyd-yajl-66cb08c
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr
gmake -j 4
gmake install DESTDIR=/tmp/y
${THOME}/build/create_pkg TRIByajl /tmp/y
rm -fr /tmp/y
