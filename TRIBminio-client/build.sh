#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir ~/ud/c
cd ~/ud/c
#
# this appears to be the final version
#
env GOPATH=`pwd` PATH=/usr/versions/go-1.26/bin:$PATH go install github.com/minio/mc@RELEASE.2025-08-13T08-35-41Z

#
# install under a different name as Midnight Commander is also called mc
#
rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/minio-client
cp bin/mc /tmp/ee/usr/bin/minio-client
cp pkg/mod/github.com/minio/mc@v0.0.0-20250813*/README.md /tmp/ee/usr/share/minio-client
cp pkg/mod/github.com/minio/mc@v0.0.0-20250813*/LICENSE /tmp/ee/usr/share/minio-client
${THOME}/build/create_pkg TRIBminio-client /tmp/ee
rm -fr /tmp/ee
