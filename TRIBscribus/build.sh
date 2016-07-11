#!/bin/sh
#
${THOME}/build/unpack scribus-1.4.5
cd scribus-1.4.5
env PATH=/usr/versions/Qt-4.8/bin:$PATH cmake . -DCMAKE_INSTALL_PREFIX:PATH=/usr -DPYTHON_INCLUDE_DIR=/usr/versions/python-2.7/include/python2.7
gmake
rm -fr /tmp/sc
gmake install DESTDIR=/tmp/sc
${THOME}/build/create_pkg TRIBscribus /tmp/sc
rm -fr /tmp/sc
