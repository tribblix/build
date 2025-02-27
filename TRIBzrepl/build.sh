#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir rr
cd rr
git clone https://github.com/zrepl/zrepl
cd zrepl
#
env PATH=${HOME}/go/bin:${PATH} GOPATH=${HOME}/go gmake zrepl-bin

rm -fr /tmp/rr
mkdir -p /tmp/rr/usr/bin
cp artifacts/zrepl-illumos-amd64 /tmp/rr/usr/bin/zrepl
mkdir -p /tmp/rr/usr/share/zrepl
cp README.md LICENSE /tmp/rr/usr/share/zrepl
$THOME/build/create_pkg TRIBzrepl /tmp/rr
rm -fr /tmp/rr
