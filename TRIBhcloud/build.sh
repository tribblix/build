#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir h
cd h
env GOPATH=`pwd` go install github.com/hetznercloud/cli/cmd/hcloud@v1.53.0
rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/hcloud
cp bin/hcloud /tmp/cs/usr/bin
cp pkg/mod/github.com/hetznercloud/cli@*/README.md pkg/mod/github.com/hetznercloud/cli@*/LICENSE /tmp/cs/usr/share/hcloud
${THOME}/build/create_pkg TRIBhcloud /tmp/cs
rm -fr /tmp/cs
