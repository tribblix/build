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
cd ..

git clone https://github.com/lumina-desktop/lumina-themes
cd lumina-themes
/usr/versions/Qt-5/bin/qmake PREFIX=/usr
gmake -j 6
gmake install INSTALL_ROOT=/tmp/lld
cd ..

$THOME/build/unpack lumina-calculator-1.6.0
cd lumina-calculator-1.6.0/src-qt5
/usr/versions/Qt-5/bin/qmake PREFIX=/usr/versions/lumina
gmake -j 6
gmake install INSTALL_ROOT=/tmp/lld
cd ../..

# lumina-pdf needs poppler-qt5, skip for now

${THOME}/build/create_pkg TRIBlumina /tmp/lld
