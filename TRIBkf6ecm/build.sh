#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# actually building the documentation triggers a docultils error
#
env PATH=/usr/versions/Qt-6/bin/amd64:$PATH $THOME/build/cmbuild -64only extra-cmake-modules-6.11.0 -P /usr/versions/Qt-6 -C "-DCMAKE_PREFIX_PATH=/usr/versions/Qt-6/lib/amd64/cmake -DBUILD_DOC=OFF -DBUILD_TESTING=OFF -DBUILD_HTML_DOCS=OFF -DBUILD_MAN_DOCS=OFF"
${THOME}/build/genpkg TRIBkf6ecm extra-cmake-modules-6.11.0
