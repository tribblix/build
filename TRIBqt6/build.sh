#!/bin/sh
#
# need to make sure the qt filename matches the unpacked directory name,
# sometimes an extra "opensource" appears in the tarball
#
# gnu PATH so we use gnu ar, which will create empty .a archives even
# with no files, when the build needs them to exist to resolve make's
# dependencies
#
# if we get the 64-bit build fixed. update the fixit file as well
#
${THOME}/build/unpack qt-everywhere-src-6.2.4
#
# 32-bit build is nice and clean
#
cd qt-everywhere-src-6.2.4
env PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig PATH=/usr/gnu/bin:$PATH ./configure --prefix=/usr/versions/Qt-6 -opensource --disable-reduce-exports -no-sql-sqlite -no-pch -xcb -xcb-xlib -bundled-xcb-xinput -confirm-license -nomake examples -nomake tests -cmake-generator 'Unix Makefiles' -c++std c++11
#
# 64-bit build doesn't work, I think something isn't passing the
# 64-bit all the way through
#
#env PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig PATH=/usr/gnu/bin:$PATH ./configure --prefix=/usr/versions/Qt-6 -opensource --disable-reduce-exports -no-sql-sqlite -no-pch -xcb -xcb-xlib -bundled-xcb-xinput -confirm-license -nomake examples -nomake tests -cmake-generator 'Unix Makefiles' -c++std c++11 -bindir /usr/versions/Qt-6/bin -libdir /usr/versions/Qt-6/lib/amd64 -plugindir /usr/versions/Qt-6/plugins/amd64 -qmldir /usr/versions/Qt-6/qml/amd64 -platform solaris-g++-64 CMAKE_PREFIX_PATH=`pwd`/qtbase/lib/amd64/cmake
env PATH=/usr/gnu/bin:$PATH gmake -j 8
cd ..

# gnu to get a working "install" binary
rm -fr /tmp/qt6
cd qt-everywhere-src-6.2.4
#env PATH=/usr/gnu/bin:$PATH gmake -j 8 install INSTALL_ROOT=/tmp/qt6
env PATH=/usr/gnu/bin:$PATH gmake -j 8 install DESTDIR=/tmp/qt6
cd ..
${THOME}/build/create_pkg TRIBqt6 /tmp/qt6
rm -fr /tmp/qt6
