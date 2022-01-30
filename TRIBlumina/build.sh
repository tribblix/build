#!/bin/sh
#
# initial port, really for testing, not quite production-ready
#
${THOME}/build/unpack lumina-1.6.2
cd lumina-1.6.2
cp ${THOME}/build/patches/LuminaOS-SunOS.cpp src-qt5/core/libLumina/LuminaOS-SunOS.cpp
# PREFIX=/usr blows up the compiler
/usr/versions/Qt-5/bin/qmake PREFIX=/usr/versions/lumina
gmake -j 6
rm -fr /tmp/lld
gmake install INSTALL_ROOT=/tmp/lld
${THOME}/build/create_pkg TRIBlumina /tmp/lld
