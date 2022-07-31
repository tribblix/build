#!/bin/sh
#
# later versions require a poppler upgrade
# unfortunately scripting support is stuck at python2
# gcc7 miscompiles something so it won't even start
#
# manual fixes:
# scribus/ui/scresizecursor.cpp include QPainterPath as well as QPainter
# comment swab() in stdlib.h to avoid duplicate definition conflict
#
env PATH=/usr/versions/Qt-5/bin:$PATH $THOME/build/cmbuild scribus-1.5.4 -C "-DPYTHON_LIBRARY=/usr/versions/python-2.7/lib/libpython2.7.so -DPYTHON_INCLUDE_DIR=/usr/versions/python-2.7/include/python2.7"
${THOME}/build/genpkg TRIBscribus scribus-1.5.4
