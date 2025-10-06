#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env GOPATH=`pwd` go install filippo.io/age/cmd/...@v1.2.1
rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/age
mkdir -p /tmp/cs/usr/share/man/man1
cp bin/age bin/age-keygen /tmp/cs/usr/bin
cp pkg/mod/filippo.io/age@*/README.md pkg/mod/filippo.io/age@*/LICENSE /tmp/cs/usr/share/age
cp pkg/mod/filippo.io/age@*/doc/*.1 /tmp/cs/usr/share/man/man1
${THOME}/build/create_pkg TRIBage /tmp/cs
rm -fr /tmp/cs
