#!/bin/sh
#
# the version number is a bit arbitrary as we're building from a current
# git checkout, but use the latest release as the pkg version as that's
# what weed reports itself
#
# this doesn't work, produces binaries that panic
# setenv GOPATH=`pwd` go get github.com/chrislusf/seaweedfs/weed
#
mkdir w
cd w
git clone github.com/chrislusf/seaweedfs/weed
cd weed
env GOPATH=`pwd` gmake
#
# you will need to fix:
#
# pkg/mod/github.com/\!azure/azure-storage-blob-go@v0.8.0/azblob/zc_mmf_unix.go
# -> it's unix.Mmap and unix.Munmap, not syscall, and build solaris
# (or have a separate solaris file)
#
# and then run the gmake again
#
rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/seaweedfs/bin
cp weed/weed /tmp/ee/opt/tribblix/seaweedfs/bin
cp README.md /tmp/ee/opt/tribblix/seaweedfs
${THOME}/build/create_pkg TRIBblix-seaweedfs /tmp/ee
rm -fr /tmp/ee
