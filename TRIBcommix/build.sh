#!/bin/sh
#
# depends on python
# needs the gnurealine module
#
rm -fr /tmp/ckx
mkdir -p /tmp/ckx/usr/versions
cd /tmp/ckx/usr/versions
${THOME}/build/unpack commix-2.3-20180307
mv commix-2.3-20180307 commix
cd
${THOME}/build/create_pkg TRIBcommix /tmp/ckx
rm -fr /tmp/ckx
