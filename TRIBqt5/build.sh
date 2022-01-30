#!/bin/sh
#
${THOME}/build/unpack qt-everywhere-opensource-src-5.12.10
cd qt-everywhere-opensource-src-5.12.10
./configure --prefix=/usr/versions/Qt-5 -opensource --disable-reduce-exports -no-sql-sqlite -qt-xcb -confirm-license -nomake examples -nomake tests -c++std c++11 -platform solaris-g++
gmake -j 8
# gnu to get a working "install" binary
rm -fr /tmp/qt5
env PATH=/usr/gnu/bin:$PATH gmake -k -j 8 install INSTALL_ROOT=/tmp/qt5
${THOME}/build/create_pkg TRIBqt5 /tmp/qt5
rm -fr /tmp/qt5

