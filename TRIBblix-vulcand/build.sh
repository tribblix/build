#!/bin/sh
#
mkdir v
cd v
env GOPATH=`pwd` go get https://github.com/vulcand/vulcand
rm -fr /tmp/v
mkdir -p /tmp/v/opt/tribblix/vulcand/bin
cp bin/vulcand /tmp/v/opt/tribblix/vulcand/bin
cp src/github.com/vulcand/vulcand/LICENSE /tmp/v/opt/tribblix/vulcand
cp src/github.com/vulcand/vulcand/README.md /tmp/v/opt/tribblix/vulcand
${THOME}/build/create_pkg TRIBblix-vulcand /tmp/v
rm -fr /tmp/v
