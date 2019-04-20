#!/bin/tcsh
#
rm -fr /tmp/ts
mkdir /tmp/ts
(cd ${THOME}/desktop-cache ; tar cf - lib var) | ( cd /tmp/ts ; tar xf -)
${THOME}/build/create_pkg TRIBsvc-gnome-desktop-cache /tmp/ts
rm -fr /tmp/ts
