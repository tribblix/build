#!/bin/sh
#
env GOPATH=`pwd` go get github.com/rakyll/hey
rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/hey
cp bin/hey /tmp/cs/usr/bin
cp src/github.com/rakyll/hey/README.md src/github.com/rakyll/hey/LICENSE /tmp/cs/usr/share/hey
${THOME}/build/create_pkg TRIBhey /tmp/cs
rm -fr /tmp/cs
