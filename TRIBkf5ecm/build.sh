#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needed for the nextcloud client
#
env PATH=/usr/versions/Qt-5/bin/amd64:$PATH $THOME/build/cmbuild -64only extra-cmake-modules-5.116.0 -P /usr/versions/Qt-5 -C "-DCMAKE_PREFIX_PATH=/usr/versions/Qt-5/lib/amd64/cmake -DBUILD_HTML_DOCS=OFF -DBUILD_MAN_DOCS=OFF"
${THOME}/build/genpkg TRIBkf5ecm extra-cmake-modules-5.116.0
