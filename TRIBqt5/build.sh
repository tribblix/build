#!/bin/sh
#
${THOME}/build/unpack qt-everywhere-opensource-src-5.6.1-1
cd qt-everywhere-opensource-src-5.6.1
./configure --prefix=/usr/versions/Qt-5 -opensource --disable-reduce-exports -no-sql-sqlite -confirm-license -platform solaris-g++
# bashisms abound [local] - fix configure qtbase/configure to use bash, also
gsed -i s:CFG_SSE2=auto:CFG_SSE2=yes: qtbase//configure
gmake -j 16
# gnu to get a working "install" binary
env PATH=/usr/gnu/bin:$PATH gmake -k -j 16 install INSTALL_ROOT=/tmp/qt5
${THOME}/build/create_pkg TRIBqt5 /tmp/qt5
