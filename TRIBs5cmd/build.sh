#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir 5
cd 5
git clone https://github.com/peak/s5cmd
cd s5cmd
env GOPATH=`pwd`/.. gmake build

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
cp s5cmd /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/s5cmd
cp LICENSE README.md /tmp/ee/usr/share/s5cmd
${THOME}/build/create_pkg TRIBs5cmd /tmp/ee
rm -fr /tmp/ee
