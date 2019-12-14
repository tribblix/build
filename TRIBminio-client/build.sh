#!/bin/sh
#
mkdir ~/ud/c
cd ~/ud/c
env GO111MODULE=on GOPATH=`pwd` /usr/versions/go-1.13/bin/go get -u github.com/minio/mc
#
# you will need to fix:
#
# pkg/mod/github.com/minio/minio@v0.0.0-***WHATEVER***/pkg/cpu/counter_other.go
# -> add solaris to the list of build targets (would be smarter to say !linux)
#
# pkg/mod/github.com/minio/mc@v0.0.0-***WHATEVER***/pkg/disk
# -> copy stat_openbsd.go to stat_solaris.go, change build to solaris,
# and change syscall to unix
#
# pkg/mod/github.com/ncw/directio@v1.0.5/direct_io_unix.go
# -> remove the syscall entirely so it just stubs openFile
#
# and then run the go get again
#
env GO111MODULE=on GOPATH=`pwd` /usr/versions/go-1.13/bin/go get -u github.com/minio/mc

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/minio-client
cp bin/mc /tmp/ee/usr/bin
cp pkg/mod/github.com/minio/mc@*/README.md /tmp/ee/usr/share/minio-client
cp pkg/mod/github.com/minio/mc@*/LICENSE /tmp/ee/usr/share/minio-client
${THOME}/build/create_pkg TRIBminio-client /tmp/ee
rm -fr /tmp/ee
