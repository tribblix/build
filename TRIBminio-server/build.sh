#!/bin/sh
#
mkdir ~/ud/c
cd ~/ud/c

#
# #8631 broke the build with an ambiguous import, so explicitly target the
# commit just before
#
env GOPATH=`pwd` PATH=/usr/versions/go-1.13/bin:$PATH GO111MODULE=on go get github.com/minio/minio@471a3a650aa1895c06ae47715fd61bc55ac0eb41

#
# you will need to fix:
#
# pkg/mod/github.com/minio/minio@v0.0.0-***WHATEVER***/pkg/cpu/counter_other.go
# -> add solaris to the list of build targets (would be smarter to say !linux)
#
# pkg/mod/github.com/\!azure/azure-storage-blob-go@v0.8.0/azblob/zc_mmf_unix.go
# -> it's unix.Mmap and unix.Munmap, not syscall, and build solaris
# (or have a separate solaris file)
#
# pkg/mod/github.com/ncw/directio@v1.0.5/direct_io_unix.go
# -> remove the syscall entirely so it just stubs openFile
#
# and then run the go get again
#

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/minio-server
cp bin/minio /tmp/ee/usr/bin
cp pkg/mod/github.com/minio/minio@v0.0.0-20191213203645-471a3a650aa1/LICENSE /tmp/ee/usr/share/minio-server
cp pkg/mod/github.com/minio/minio@v0.0.0-20191213203645-471a3a650aa1/README.md /tmp/ee/usr/share/minio-server
${THOME}/build/create_pkg TRIBminio-server /tmp/ee
rm -fr /tmp/ee
