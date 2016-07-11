#!/bin/sh
#
rm -fr /tmp/ts
mkdir /tmp/ts
(cd ${THOME}/tribblix-session ; tar cf - usr) | ( cd /tmp/ts ; tar xf -)
${THOME}/build/create_pkg TRIBblix-session /tmp/ts
rm -fr /tmp/ts
