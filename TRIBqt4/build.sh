#!/bin/sh
#
${THOME}/build/dobuild qt-everywhere-opensource-src-4.8.7 -P /usr/versions/Qt-4.8 -C "-platform solaris-g++ --disable-reduce-exports -no-webkit"
cd qt-everywhere-opensource-src-4.8.7
rm -fr /tmp/qt4
gmake -k -j 16 install INSTALL_ROOT=/tmp/qt4
${THOME}/build/create_pkg TRIBqt4 /tmp/qt4
rm -fr /tmp/qt4
