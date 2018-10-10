#!/bin/sh
#
# no versioned releases, built from master which had its latest
# commit on Oct 5 2018, hence the version number
#
${THOME}/build/unpack plan9port-master
cd plan9port-master
env PATH=/usr/gnu/bin:$PATH PLAN9_TARGET=/usr/versions/plan9 ./INSTALL -b
env PATH=/usr/gnu/bin:$PATH PLAN9_TARGET=/usr/versions/plan9 ./INSTALL -c
cd ..
mkdir -p t1/usr/versions
mv plan9port-master t1/usr/versions/plan9
${THOME}/build/create_pkg TRIBplan9 `pwd`/t1
rm -fr t1
