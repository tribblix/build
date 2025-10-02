#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env GOPATH=`pwd` go install github.com/openrdap/rdap/cmd/rdap@latest
rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/rdap
cp bin/rdap /tmp/cs/usr/bin
cp pkg/mod/github.com/openrdap/rdap@*/README.md pkg/mod/github.com/openrdap/rdap@*/LICENSE /tmp/cs/usr/share/rdap
${THOME}/build/create_pkg TRIBrdap-client /tmp/cs
rm -fr /tmp/cs
