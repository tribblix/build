#!/bin/sh
#
#
git clone https://github.com/LibreCAD/LibreCAD
cd LibreCAD
gmake

rm -fr /tmp/ll
mkdir -p /tmp/ll/usr/versions/LibreCAD
(cd unix ; tar cf - .) | ( cd /tmp/ll/usr/versions/LibreCAD ; tar xf -)

${THOME}/build/create_pkg TRIBlibrecad /tmp/ll
