#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir w
cd w

$THOME/build/unpack -b 4.34 https://github.com/seaweedfs/seaweedfs
cd seaweedfs/weed
env GOPATH=`pwd`/../.. gmake install
cd ../..

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/seaweedfs/bin
cp bin/weed /tmp/ee/opt/tribblix/seaweedfs/bin
cp seaweedfs/README.md seaweedfs/LICENSE /tmp/ee/opt/tribblix/seaweedfs
${THOME}/build/create_pkg TRIBblix-seaweedfs /tmp/ee
rm -fr /tmp/ee
