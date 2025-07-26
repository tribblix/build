#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# build both the regular and QT packages together
#
env PATH=/usr/versions/Qt-5/bin/`${THOME}/build/getarch`:$PATH $THOME/build/cmbuild -64only zint-2.15.0-src -C "-DCMAKE_PREFIX_PATH=/usr/versions/Qt-5/lib/`${THOME}/build/getarch`/cmake -DCMAKE_INSTALL_RPATH_USE_LINK_PATH=TRUE"
${THOME}/build/genpkg TRIBzint zint-2.15.0-src
${THOME}/build/genpkg TRIBzint-qt zint-2.15.0-src
