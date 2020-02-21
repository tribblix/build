#!/bin/sh
#
mkdir ~/ud/ff
cd ~/ud/ff
env GOPATH=`pwd`go get github.com/fabiolb/fabio

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/fabio/bin
cp bin/fabio /tmp/ee/opt/tribblix/fabio/bin
cp src/github.com/fabiolb/fabio/README.md /tmp/ee/opt/tribblix/fabio
${THOME}/build/create_pkg TRIBblix-fabio /tmp/ee
rm -fr /tmp/ee
