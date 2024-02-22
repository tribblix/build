#!/bin/sh
#
# the version number is a bit arbitrary as we're building from a current
# git checkout, but use the latest release as the pkg version as that's
# what weed reports itself
#
mkdir w
cd w
git clone https://github.com/seaweedfs/seaweedfs
cd seaweedfs/weed
env PATH=/usr/versions/go-1.22/bin:$PATH GOPATH=`pwd` gmake
cd ..
#
rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/seaweedfs/bin
cp weed/bin/weed /tmp/ee/opt/tribblix/seaweedfs/bin
cp README.md /tmp/ee/opt/tribblix/seaweedfs
${THOME}/build/create_pkg TRIBblix-seaweedfs /tmp/ee
rm -fr /tmp/ee
