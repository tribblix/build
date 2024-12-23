#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needed for the nextcloud client
#
env PATH=/usr/versions/Qt-5/bin/amd64:$PATH $THOME/build/cmbuild -64only karchive-5.116.0 -P /usr/versions/Qt-5 -C "-DCMAKE_PREFIX_PATH=/usr/versions/Qt-5/lib/amd64/cmake -DKF_IGNORE_PLATFORM_CHECK=TRUE -DBZIP2_NEED_PREFIX=YES"
${THOME}/build/genpkg TRIBkf5archive karchive-5.116.0
