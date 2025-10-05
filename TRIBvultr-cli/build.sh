#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Note the v3 in the path
#
env GOPATH=`pwd` go install github.com/vultr/vultr-cli/v3@v3.8.0
rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/vultr-cli
cp bin/vultr-cli /tmp/cs/usr/bin
cp pkg/mod/github.com/vultr/vultr-cli/v3@*/README.md pkg/mod/github.com/vultr/vultr-cli/v3@*/LICENSE /tmp/cs/usr/share/vultr-cli
${THOME}/build/create_pkg TRIBvultr-cli /tmp/cs
rm -fr /tmp/cs
