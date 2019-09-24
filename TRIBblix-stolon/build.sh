#!/bin/sh
#
# needs go 1.11
#
mkdir s2
cd s2
#
# a little clunky, use go get to download the source to the right place
# and then the build script to actually do the compile
#
env GOPATH=`pwd` PATH=/usr/versions/go-1.12/bin:$PATH go get -v github.com/sorintlab/stolon
env GOPATH=`pwd` PATH=/usr/versions/go-1.12/bin:$PATH STOLON_VERSION=0.14.0 src/github.com/sorintlab/stolon/build

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/stolon/bin
cp src/github.com/sorintlab/stolon/bin/stolon* /tmp/ee/opt/tribblix/stolon/bin
cp -R src/github.com/sorintlab/stolon/doc /tmp/ee/opt/tribblix/stolon
cp src/github.com/sorintlab/stolon/README.md /tmp/ee/opt/tribblix/stolon
${THOME}/build/create_pkg TRIBblix-stolon /tmp/ee
rm -fr /tmp/ee
