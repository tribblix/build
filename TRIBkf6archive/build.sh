#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env PATH=/usr/versions/Qt-6/bin/amd64:$PATH $THOME/build/cmbuild -64only karchive-6.11.0 -P /usr/versions/Qt-6 -C "-DCMAKE_PREFIX_PATH=/usr/versions/Qt-6/lib/amd64/cmake -DKF_IGNORE_PLATFORM_CHECK=TRUE -DBZIP2_NEED_PREFIX=YES"
${THOME}/build/genpkg TRIBkf6archive karchive-6.11.0
