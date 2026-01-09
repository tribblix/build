#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir w
cd w
env PATH=/usr/versions/go-1.25/bin:$PATH GOPATH=`pwd` go install github.com/seaweedfs/seaweedfs/weed@4.05

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/seaweedfs/bin
cp bin/weed /tmp/ee/opt/tribblix/seaweedfs/bin
cp pkg/mod/github.com/seaweedfs/seaweedfs@v*/README.md pkg/mod/github.com/seaweedfs/seaweedfs@v*/LICENSE /tmp/ee/opt/tribblix/seaweedfs
${THOME}/build/create_pkg TRIBblix-seaweedfs /tmp/ee
rm -fr /tmp/ee
