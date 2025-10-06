#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# check out the latest version
#
mkdir w
cd w
git clone https://github.com/seaweedfs/seaweedfs
cd seaweedfs
git checkout 3.97
cd weed
env PATH=/usr/versions/go-1.24/bin:$PATH GOPATH=`pwd` gmake
cd ..
#
rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/seaweedfs/bin
cp weed/bin/weed /tmp/ee/opt/tribblix/seaweedfs/bin
cp README.md LICENSE /tmp/ee/opt/tribblix/seaweedfs
${THOME}/build/create_pkg TRIBblix-seaweedfs /tmp/ee
rm -fr /tmp/ee
