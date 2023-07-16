#!/bin/sh
#
#
git clone https://github.com/LibreCAD/LibreCAD
cd LibreCAD
env PATH=/usr/versions/Qt-5/bin:$PATH qmake -r
env PATH=/usr/versions/Qt-5/bin:$PATH gmake -j 4

rm -fr /tmp/ll
mkdir -p /tmp/ll/usr/versions/LibreCAD
(cd unix ; tar cf - .) | ( cd /tmp/ll/usr/versions/LibreCAD ; tar xf -)

${THOME}/build/create_pkg TRIBlibrecad /tmp/ll
