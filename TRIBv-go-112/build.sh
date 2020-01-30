#!/bin/sh
#
# either uninstall gdb, or run make.bash rather than all.bash, as the gdb
# test fails on Tribblix
#
# There have been issues with GOROOT_FINAL causing test failures
# https://github.com/golang/go/issues/20284
#
# 1.12 release, now default
#
# the tarball has some test files with UTF-8 filenames
#
rm -fr go
env LANG=en_GB.UTF-8 ${THOME}/build/unpack go1.12.16.src
cd go/src
env GOROOT_FINAL=/usr/versions/go-1.12 GOROOT_BOOTSTRAP=/usr/versions/go-1.11 ./all.bash
cd ..
rm -fr /tmp/gg
mkdir -p /tmp/gg/usr/versions/go-1.12
tar cf - . | (cd /tmp/gg/usr/versions/go-1.12 ; tar xf -)
# [need to package godoc and gox]
# need to not be at a valid GOROOT
mkdir t
cd t
env GOROOT=/tmp/gg/usr/versions/go-1.12 GOPATH=`pwd` ../bin/go get golang.org/x/tools/cmd/godoc
cp bin/godoc /tmp/gg/usr/versions/go-1.12/bin
env GOROOT=/tmp/gg/usr/versions/go-1.12 GOPATH=`pwd` ../bin/go get github.com/mitchellh/gox
cp bin/gox /tmp/gg/usr/versions/go-1.12/bin
${THOME}/build/create_pkg TRIBv-go-112 /tmp/gg
cd ../..
rm -fr /tmp/gg
