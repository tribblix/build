#!/bin/sh
#
${THOME}/build/unpack scribus-1.4.6
cd scribus-1.4.6
env PATH=/usr/versions/Qt-4.8/bin:$PATH cmake . -DCMAKE_INSTALL_PREFIX:PATH=/usr -DPYTHON_INCLUDE_DIR=/usr/versions/python-2.7/include/python2.7
gmake
${THOME}/build/genpkg TRIBscribus
