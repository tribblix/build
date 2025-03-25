#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needed for the nextcloud client
#
env LANG=C.UTF-8 env PATH=/usr/versions/Qt-6/bin/amd64:/usr/gnu/bin:$PATH $THOME/build/cmbuild -64only qtkeychain-0.15.0 -P /usr/versions/Qt-6 -C "-DCMAKE_PREFIX_PATH=/usr/versions/Qt-6/lib/amd64/cmake -DBUILD_WITH_QT6=ON -DLIBSECRET_SUPPORT=ON"
${THOME}/build/genpkg TRIBqt6keychain qtkeychain-0.15.0
