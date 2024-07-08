#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir ~/ud/c
cd ~/ud/c

#
# containerd/console is broken, so pick a tag that works
# https://github.com/minio/minio/issues/17398
# https://github.com/containerd/console/issues/75
#
env GOPATH=`pwd` PATH=/usr/versions/go-1.22/bin:$PATH go install github.com/minio/minio@RELEASE.2023-05-18T00-05-36Z

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/minio-server
cp bin/minio /tmp/ee/usr/bin
cp pkg/mod/github.com/minio/minio@v0.0.0-*/LICENSE /tmp/ee/usr/share/minio-server
cp pkg/mod/github.com/minio/minio@v0.0.0-*/README.md /tmp/ee/usr/share/minio-server
${THOME}/build/create_pkg TRIBminio-server /tmp/ee
rm -fr /tmp/ee
