#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# specify version explicitly, rather than @latest
# later versions fail to build
#
env GOPATH=`pwd` go install github.com/digitalocean/doctl/cmd/doctl@v1.79
rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/doctl
cp bin/doctl /tmp/cs/usr/bin
cp pkg/mod/github.com/digitalocean/doctl@*/README.md pkg/mod/github.com/digitalocean/doctl@*/LICENSE.txt /tmp/cs/usr/share/doctl
${THOME}/build/create_pkg TRIBdoctl /tmp/cs
rm -fr /tmp/cs
