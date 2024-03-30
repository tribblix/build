#!/bin/sh
#
# need to make sure the qt filename matches the unpacked directory name,
# sometimes an extra "opensource" appears in the tarball
#
# gnu PATH so we use gnu ar, which will create empty .a archives even
# with no files, when the build needs them to exist to resolve make's
# dependencies
#
${THOME}/build/unpack qt-everywhere-src-5.15.13
cd qt-everywhere-src-5.15.13
env PATH=/usr/gnu/bin:/usr/bin/amd64:$PATH PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig ./configure --prefix=/usr/versions/Qt-5 -opensource --disable-reduce-exports -no-sql-sqlite -xcb -xcb-xlib -bundled-xcb-xinput -confirm-license -nomake examples -nomake tests -c++std c++11 -bindir /usr/versions/Qt-5/bin/amd64 -libdir /usr/versions/Qt-5/lib/amd64 -plugindir /usr/versions/Qt-5/plugins/amd64 -importdir /usr/versions/Qt-5/imports/amd64 -qmldir /usr/versions/Qt-5/qml/amd64 -platform solaris-g++-64
env PATH=/usr/gnu/bin:/usr/bin/amd64:$PATH PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig gmake -j 8

# gnu to get a working "install" binary
rm -fr /tmp/qt5
env PATH=/usr/gnu/bin:/usr/bin/amd64:$PATH PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig gmake -j 8 install INSTALL_ROOT=/tmp/qt5
cd ..

${THOME}/build/create_pkg TRIBqt5 /tmp/qt5
rm -fr /tmp/qt5
