#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need to make sure the qt filename matches the unpacked directory name,
# sometimes an extra "opensource" appears in the tarball
#
# gnu PATH so we use gnu ar, which will create empty .a archives even
# with no files, when the build needs them to exist to resolve make's
# dependencies
#
${THOME}/build/unpack qt-everywhere-src-6.6.3
#
# 64-bit build needs a fair amount of work to get 64-bit consistently
#
cd qt-everywhere-src-6.6.3
env LANG=C.UTF-8 CXX="g++ -m64" CC="gcc -m64" PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig PATH=/usr/gnu/bin:/usr/bin/amd64:$PATH ./configure --prefix=/usr/versions/Qt-6 -opensource --disable-reduce-exports -xcb -xcb-xlib -qpa xcb -release -system-pcre -system-zlib -system-freetype -system-libpng -system-libjpeg -system-webp -system-tiff -jasper -no-sql-sqlite -no-eglfs -skip qtwebengine -skip qtquick3dphysics -no-pch -confirm-license -nomake examples -nomake tests -cmake-generator 'Unix Makefiles' -c++std c++11 -bindir /usr/versions/Qt-6/bin -libdir /usr/versions/Qt-6/lib/amd64 -plugindir /usr/versions/Qt-6/plugins/amd64 -qmldir /usr/versions/Qt-6/qml/amd64 -platform solaris-g++-64 CMAKE_PREFIX_PATH=`pwd`/qtbase/lib/amd64/cmake CMAKE_LIBRARY_ARCHITECTURE=amd64
mkdir qtbase/translations
env LANG=C.UTF-8 PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig PATH=/usr/gnu/bin:/usr/bin/amd64:$PATH gmake -j 8

# gnu to get a working "install" binary
rm -fr /tmp/qt6
env PATH=/usr/gnu/bin:$PATH gmake -j 8 install DESTDIR=/tmp/qt6
cd ..
${THOME}/build/create_pkg TRIBqt6 /tmp/qt6
rm -fr /tmp/qt6
