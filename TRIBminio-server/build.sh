#!/bin/sh
#
mkdir ~/ud/c
cd ~/ud/c

#
env GOPATH=`pwd` go install github.com/minio/minio@latest

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/minio-server
cp bin/minio /tmp/ee/usr/bin
cp pkg/mod/github.com/minio/minio@v0.0.0-*/LICENSE /tmp/ee/usr/share/minio-server
cp pkg/mod/github.com/minio/minio@v0.0.0-*/README.md /tmp/ee/usr/share/minio-server
${THOME}/build/create_pkg TRIBminio-server /tmp/ee
rm -fr /tmp/ee
