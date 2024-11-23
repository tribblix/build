#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir ~/ud/c
cd ~/ud/c
env GOPATH=`pwd` PATH=/usr/versions/go-1.23/bin:$PATH go install github.com/minio/mc@RELEASE.2024-11-17T19-35-25Z

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/minio-client
cp bin/mc /tmp/ee/usr/bin
cp pkg/mod/github.com/minio/mc@v0.0.0-20241117*/README.md /tmp/ee/usr/share/minio-client
cp pkg/mod/github.com/minio/mc@v0.0.0-20241117*/LICENSE /tmp/ee/usr/share/minio-client
${THOME}/build/create_pkg TRIBminio-client /tmp/ee
rm -fr /tmp/ee
