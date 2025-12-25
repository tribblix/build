#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# no versioned releases, built from master which had its latest
# commit on Mar 31 2023, hence the version number
#
#
${THOME}/build/unpack plan9port-master
cd plan9port-master
#
# need this on sparc, x86 defaults to gcc already
#
echo CC9=gcc > LOCAL.config
#
env PATH=/usr/gnu/bin:$PATH PLAN9_TARGET=/usr/versions/plan9 ./INSTALL -b
env PATH=/usr/gnu/bin:$PATH PLAN9_TARGET=/usr/versions/plan9 ./INSTALL -c
cd ..
mkdir -p t1/usr/versions
mv plan9port-master t1/usr/versions/plan9
${THOME}/build/create_pkg TRIBplan9 `pwd`/t1
rm -fr t1
