#!/bin/sh
#
mkdir ~/ud/c
cd ~/ud/c
env GO111MODULE=on GOPATH=`pwd` /usr/versions/go-1.15/bin/go get github.com/minio/mc

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/minio-client
cp bin/mc /tmp/ee/usr/bin
cp pkg/mod/github.com/minio/mc@*/README.md /tmp/ee/usr/share/minio-client
cp pkg/mod/github.com/minio/mc@*/LICENSE /tmp/ee/usr/share/minio-client
${THOME}/build/create_pkg TRIBminio-client /tmp/ee
rm -fr /tmp/ee
