#!/bin/sh
#
# Note the v2 in the path
#
env GOPATH=`pwd` go install github.com/vultr/vultr-cli/v2@latest
rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/vultr-cli
cp bin/vultr-cli /tmp/cs/usr/bin
cp pkg/mod/github.com/vultr/vultr-cli/v2@*/README.md pkg/mod/github.com/vultr/vultr-cli/v2@*/LICENSE /tmp/cs/usr/share/vultr-cli
${THOME}/build/create_pkg TRIBvultr-cli /tmp/cs
rm -fr /tmp/cs
