#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/unpack LibreCAD-2.2.1.2
cd LibreCAD-2.2.1.2

env PATH=/usr/versions/Qt-5/bin/`${THOME}/build/getarch`:$PATH qmake -r
env PATH=/usr/versions/Qt-5/bin/`${THOME}/build/getarch`:$PATH gmake -j 4

rm -fr /tmp/ll
mkdir -p /tmp/ll/usr/versions/LibreCAD
(cd unix ; tar cf - .) | ( cd /tmp/ll/usr/versions/LibreCAD ; tar xf -)

${THOME}/build/create_pkg TRIBlibrecad /tmp/ll
