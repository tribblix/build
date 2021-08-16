#!/bin/sh
#
env GOPATH=`pwd` go get github.com/barnybug/cli53/cmd/cli53
rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/cli53
cp bin/cli53 /tmp/cs/usr/bin
cp src/github.com/barnybug/cli53/README.md src/github.com/barnybug/cli53/LICENSE /tmp/cs/usr/share/cli53
${THOME}/build/create_pkg TRIBcli53 /tmp/cs
rm -fr /tmp/cs
