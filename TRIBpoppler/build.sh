#!/bin/sh
#
# bumping the version requires rebuilding all dependants as the
# SONAME changes
#

#
# this is the old compatibility version
#
env CPPFLAGS="-D_XPG6" ${THOME}/build/dobuild -64 poppler-0.56.0 -C "--enable-xpdf-headers --disable-introspection --disable-gtk-test"

#
# the new version
# slightly downrev due to dependencies (eg boost)
#
env CC="gcc -m64" ${THOME}/build/cmbuild +64 poppler-22.12.0 -C "-DENABLE_STATIC=FALSE -DBUILD_QT5_TESTS=OFF -DBUILD_GTK_TESTS=OFF -DENABLE_UNSTABLE_API_ABI_HEADERS=ON -DENABLE_QT5=OFF -DENABLE_QT6=OFF -DENABLE_LIBCURL=OFF -DWITH_GObjectIntrospection=OFF -DCMAKE_PREFIX_PATH=/usr/lib/amd64/openjpeg-2.5"
${THOME}/build/cmbuild +32 poppler-22.12.0 -C "-DENABLE_STATIC=FALSE -DBUILD_QT5_TESTS=OFF -DBUILD_GTK_TESTS=OFF -DENABLE_UNSTABLE_API_ABI_HEADERS=ON -DENABLE_QT5=OFF -DENABLE_QT6=OFF -DENABLE_LIBCURL=OFF -DWITH_GObjectIntrospection=OFF"

#
# and poppler-data
#
${THOME}/build/cmbuild poppler-data-0.4.12

# install manually so as to clean up in the middle
rm -fr /tmp/pp1b
cd poppler-0.56.0-64bit
gmake install DESTDIR=/tmp/pp1b
cd ..
cd poppler-0.56.0
gmake install DESTDIR=/tmp/pp1b
cd ..
# clean that up
rm -fr /tmp/pp1b/usr/include /tmp/pp1b/usr/bin /tmp/pp1b/usr/share
# now the current version
cd poppler-22.12.0/tribblix_build
gmake install DESTDIR=/tmp/pp1b
cd ../..
cd poppler-22.12.0-64bit/tribblix_build
gmake install DESTDIR=/tmp/pp1b
cd ../..
# and install poppler-data
cd poppler-data-0.4.12/tribblix_build
gmake install DESTDIR=/tmp/pp1b
cd ../..

${THOME}/build/create_pkg TRIBpoppler /tmp/pp1b
rm -fr /tmp/pp1b

#when we drop the old compat layer we can do this
#${THOME}/build/genpkg TRIBpoppler poppler-22.12.0
