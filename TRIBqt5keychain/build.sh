#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needed for the nextcloud client
#
env PATH=/usr/versions/Qt-5/bin/amd64:$PATH $THOME/build/cmbuild -64only qtkeychain-0.13.2 -P /usr/versions/Qt-5 -C -DCMAKE_PREFIX_PATH=/usr/versions/Qt-5/lib/amd64/cmake
${THOME}/build/genpkg TRIBqt5keychain qtkeychain-0.13.2
