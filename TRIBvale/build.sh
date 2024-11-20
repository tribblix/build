#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/unpack vale-3.9.1
cd vale-3.9.1

# like the Makefile, but that will only autodetect the version
# from a git checkout, so we specify explicitly
/usr/versions/go-1.23/bin/go build -ldflags "-s -w -X main.version=v3.9.1" -o bin/ ./cmd/vale

rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/vale
cp bin/vale /tmp/cs/usr/bin
cp README.md LICENSE /tmp/cs/usr/share/vale
${THOME}/build/create_pkg TRIBvale /tmp/cs
rm -fr /tmp/cs
