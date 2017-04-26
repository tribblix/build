#!/bin/sh
#
mkdir ~/ud/c
cd ~/ud/c
env GOPATH=`pwd` /usr/versions/go-1.8/bin/go get -u github.com/minio/minio
rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
cp bin/minio /tmp/ee/usr/bin
${THOME}/build/create_pkg TRIBminio-server /tmp/ee
rm -fr /tmp/ee
