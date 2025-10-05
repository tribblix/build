#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env GOPATH=`pwd` PATH=/usr/versions/go-1.24/bin:$PATH go install github.com/google/osv-scanner/v2/cmd/osv-scanner@v2.1.0

rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/osv-scanner

cp bin/osv-scanner /tmp/cs/usr/bin
cp pkg/mod/github.com/google/osv-scanner/v2@*/README.md pkg/mod/github.com/google/osv-scanner/v2@*/LICENSE /tmp/cs/usr/share/osv-scanner
${THOME}/build/create_pkg TRIBosv-scanner /tmp/cs

rm -fr /tmp/cs
