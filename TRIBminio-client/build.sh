#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir ~/ud/c
cd ~/ud/c
env GOPATH=`pwd` PATH=/usr/versions/go-1.23/bin:$PATH go install github.com/minio/mc@RELEASE.2025-03-12T17-29-24Z

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/minio-client
cp bin/mc /tmp/ee/usr/bin/minio-client
cp pkg/mod/github.com/minio/mc@v0.0.0-20250312*/README.md /tmp/ee/usr/share/minio-client
cp pkg/mod/github.com/minio/mc@v0.0.0-20250312*/LICENSE /tmp/ee/usr/share/minio-client
${THOME}/build/create_pkg TRIBminio-client /tmp/ee
rm -fr /tmp/ee
