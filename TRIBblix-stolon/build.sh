#!/bin/sh
#
# needs go 1.13 or later
#
mkdir s2
cd s2
#
# a little clunky, use go get to download the source to the right place
# and then run make to actually do the compile
#
env GOPATH=`pwd` PATH=/usr/versions/go-1.14/bin:$PATH go get -v github.com/sorintlab/stolon
env GOPATH=`pwd` PATH=/usr/versions/go-1.14/bin:$PATH gmake -C src/github.com/sorintlab/stolon

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/stolon/bin
cp src/github.com/sorintlab/stolon/bin/stolon* /tmp/ee/opt/tribblix/stolon/bin
cp -R src/github.com/sorintlab/stolon/doc /tmp/ee/opt/tribblix/stolon
cp src/github.com/sorintlab/stolon/README.md /tmp/ee/opt/tribblix/stolon
${THOME}/build/create_pkg TRIBblix-stolon /tmp/ee
rm -fr /tmp/ee
