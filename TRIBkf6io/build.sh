#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env LANG=C.UTF-8 PATH=/usr/versions/Qt-6/bin/amd64:/usr/gnu/bin:$PATH $THOME/build/cmbuild -64only kio-6.11.0 -P /usr/versions/Qt-6 -C "-DCMAKE_PREFIX_PATH=/usr/versions/Qt-6/lib/amd64/cmake -DKF_IGNORE_PLATFORM_CHECK=TRUE -DWITH_WAYLAND=OFF -DBUILD_TESTING=OFF"
${THOME}/build/genpkg TRIBkf6io kio-6.11.0
