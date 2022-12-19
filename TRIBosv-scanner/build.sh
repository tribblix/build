#!/bin/sh
#
env GOPATH=`pwd` go install github.com/google/osv-scanner/cmd/osv-scanner@v1

rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/osv-scanner

cp bin/osv-scanner /tmp/cs/usr/bin
cp pkg/mod/github.com/google/osv-scanner@v1*/README.md pkg/mod/github.com/google/osv-scanner@v1*/LICENSE /tmp/cs/usr/share/osv-scanner
${THOME}/build/create_pkg TRIBosv-scanner /tmp/cs

rm -fr /tmp/cs
