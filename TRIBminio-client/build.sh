#!/bin/sh
#
mkdir ~/ud/c
cd ~/ud/c
env GOPATH=`pwd` /usr/versions/go-1.10/bin/go get -u github.com/minio/mc
sed -i 's:darwin:darwin solaris:' src/github.com/minio/mc/vendor/github.com/minio/minio/pkg/cpu/counter_other.go
env GOPATH=`pwd` /usr/versions/go-1.10/bin/go get -u github.com/minio/mc
rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/minio-client
cp bin/mc /tmp/ee/usr/bin
cp src/github.com/minio/mc/README.md /tmp/ee/usr/share/minio-client
cp src/github.com/minio/mc/LICENSE /tmp/ee/usr/share/minio-client
${THOME}/build/create_pkg TRIBminio-client /tmp/ee
rm -fr /tmp/ee
