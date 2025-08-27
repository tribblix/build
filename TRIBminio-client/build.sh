#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir ~/ud/c
cd ~/ud/c
env GOPATH=`pwd` PATH=/usr/versions/go-1.25/bin:$PATH go install github.com/minio/mc@RELEASE.2025-07-21T05-28-08Z

#
# install under a different name as Midnight Commander is also called mc
#
rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/minio-client
cp bin/mc /tmp/ee/usr/bin/minio-client
cp pkg/mod/github.com/minio/mc@v0.0.0-20250721*/README.md /tmp/ee/usr/share/minio-client
cp pkg/mod/github.com/minio/mc@v0.0.0-20250721*/LICENSE /tmp/ee/usr/share/minio-client
${THOME}/build/create_pkg TRIBminio-client /tmp/ee
rm -fr /tmp/ee
