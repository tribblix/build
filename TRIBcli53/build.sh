#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
env GOPATH=`pwd` go install github.com/barnybug/cli53/cmd/cli53@v0.8.25

rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/cli53
cp bin/cli53 /tmp/cs/usr/bin
cp pkg/mod/github.com/barnybug/cli53@*/README.md pkg/mod/github.com/barnybug/cli53@*/LICENSE /tmp/cs/usr/share/cli53
${THOME}/build/create_pkg TRIBcli53 /tmp/cs
rm -fr /tmp/cs
