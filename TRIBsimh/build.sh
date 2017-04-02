#!/bin/sh
#
# unpack the master.zip file and rename to simh-master.zip
#
${THOME}/build/unpack simh-master
cd simh-master
gmake
rm -fr /tmp/simh
mkdir -p /tmp/simh/usr/versions/simh
cp BIN/* README.md /tmp/simh/usr/versions/simh
${THOME}/build/create_pkg TRIBsimh /tmp/simh
rm -fr /tmp/simh
