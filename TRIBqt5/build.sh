#!/bin/sh
#
${THOME}/build/unpack qt-everywhere-opensource-src-5.2.1
cd qt-everywhere-opensource-src-5.2.1
./configure --prefix=/usr/versions/Qt-5.2.1 -opensource --disable-reduce-exports -no-sql-sqlite -confirm-license -platform solaris-g++
gmake -j 16
gmake -k -j 16 install INSTALL_ROOT=/tmp/qt5
${THOME}/build/create_pkg TRIBqt5 /tmp/qt5
