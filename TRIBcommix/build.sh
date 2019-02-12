#!/bin/sh
#
# depends on python
# needs the gnureadline module
#
rm -fr /tmp/ckx
mkdir -p /tmp/ckx/usr/versions
cd /tmp/ckx/usr/versions
${THOME}/build/unpack commix-2.7-20181218
mv commix-2.7-20181218 commix
cd
${THOME}/build/create_pkg TRIBcommix /tmp/ckx
rm -fr /tmp/ckx
