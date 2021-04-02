#!/bin/sh
#
mkdir ~/ud/c
cd ~/ud/c

#
# it really does need Go 1.16
#
env GOPATH=`pwd` PATH=/usr/versions/go-1.16/bin:$PATH GO111MODULE=on go get github.com/minio/minio

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/minio-server
cp bin/minio /tmp/ee/usr/bin
cp pkg/mod/github.com/minio/minio@v0.0.0-*/LICENSE /tmp/ee/usr/share/minio-server
cp pkg/mod/github.com/minio/minio@v0.0.0-*/README.md /tmp/ee/usr/share/minio-server
${THOME}/build/create_pkg TRIBminio-server /tmp/ee
rm -fr /tmp/ee
