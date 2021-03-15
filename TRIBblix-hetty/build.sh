#!/bin/sh
#
mkdir r
cd r
env GOPATH=`pwd` go get github.com/GeertJohan/go.rice
env GOPATH=`pwd` go get github.com/GeertJohan/go.rice/rice
cd ..
git clone https://github.com/dstotijn/hetty
cd hetty
env PATH=/usr/versions/yarn-v1.22.5/bin:`pwd`/../r/bin:$PATH gmake build

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/hetty/bin
cp ./hetty /tmp/ee/opt/tribblix/hetty/bin
cp README.md /tmp/ee/opt/tribblix/hetty
${THOME}/build/create_pkg TRIBblix-hetty /tmp/ee
rm -fr /tmp/ee
cd ..
