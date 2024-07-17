#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# bumping the version requires rebuilding direct dependants as the
# SONAME changes, although most packages go via libpoppler-glib which
# is more stable
#

#
# the new version
# slightly downrev due to dependencies (eg boost)
#
env CC="gcc -m64" ${THOME}/build/cmbuild -64only poppler-22.12.0 -C "-DENABLE_STATIC=FALSE -DBUILD_QT5_TESTS=OFF -DBUILD_GTK_TESTS=OFF -DENABLE_UNSTABLE_API_ABI_HEADERS=ON -DENABLE_QT5=OFF -DENABLE_QT6=OFF -DENABLE_LIBCURL=OFF -DWITH_GObjectIntrospection=OFF -DCMAKE_PREFIX_PATH=/usr/lib/`$THOME/build/getarch`/cmake/openjpeg-2.5"

#
# and poppler-data
#
${THOME}/build/cmbuild poppler-data-0.4.12

${THOME}/build/genpkg TRIBpoppler poppler-22.12.0 poppler-data-0.4.12
