#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir ff
cd ff
env GOPATH=`pwd` go install github.com/ffuf/ffuf/v2@v2.1.0

rm -fr /tmp/ef
mkdir -p /tmp/ef/usr/bin
cp bin/ffuf /tmp/ef/usr/bin
mkdir -p /tmp/ef/usr/share/ffuf
cd pkg/mod/github.com/ffuf/ffuf/v2@v*
cp LICENSE README.md /tmp/ef/usr/share/ffuf
${THOME}/build/create_pkg TRIBffuf /tmp/ef
rm -fr /tmp/ef
