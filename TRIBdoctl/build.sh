#!/bin/sh
#
env GOPATH=`pwd` go get github.com/digitalocean/doctl/cmd/doctl
rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/doctl
cp bin/doctl /tmp/cs/usr/bin
cp pkg/mod/github.com/digitalocean/doctl@*/README.md pkg/mod/github.com/digitalocean/doctl@*/LICENSE.txt /tmp/cs/usr/share/doctl
${THOME}/build/create_pkg TRIBdoctl /tmp/cs
rm -fr /tmp/cs
