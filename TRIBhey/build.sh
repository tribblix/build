#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env GOPATH=`pwd` go install github.com/rakyll/hey@v0.1.4
rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/hey
cp bin/hey /tmp/cs/usr/bin
cp pkg/mod/github.com/rakyll/hey@*/README.md pkg/mod/github.com/rakyll/hey@*/LICENSE /tmp/cs/usr/share/hey
${THOME}/build/create_pkg TRIBhey /tmp/cs
rm -fr /tmp/cs
