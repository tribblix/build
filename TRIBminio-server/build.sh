#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir ~/ud/c
cd ~/ud/c

#
# in pkg/mod/github.com/ncw/directio@v1.0.5/direct_io_unix.go
# syscall -> unix (import syscall -> golang.org/x/sys/unix)
#
# in pkg/mod/github.com/minio/minio@v0.0.0-20250723155402-7ced9663e6a7/internal/disk/directio_unix.go
# syscall -> unix, remove syscall import
#
# must be go 1.25, otherwise you get a completely useless error message
# could not import golang.org/x/sys/unix (open : no such file or directory)
#
env GOPATH=`pwd` PATH=/usr/versions/go-1.25/bin:$PATH go install github.com/minio/minio@RELEASE.2025-07-23T15-54-02Z


rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/minio-server
cp bin/minio /tmp/ee/usr/bin
cp pkg/mod/github.com/minio/minio@v0.0.0-*/LICENSE /tmp/ee/usr/share/minio-server
cp pkg/mod/github.com/minio/minio@v0.0.0-*/README.md /tmp/ee/usr/share/minio-server
${THOME}/build/create_pkg TRIBminio-server /tmp/ee
rm -fr /tmp/ee
