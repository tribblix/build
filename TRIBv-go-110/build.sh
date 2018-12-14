#!/bin/sh
#
# either uninstall gdb, or run make.bash rather than all.bash, as the gdb
# test fails on Tribblix
#
# There have been issues with GOROOT_FINAL causing test failures
# https://github.com/golang/go/issues/20284
#
rm -fr go
${THOME}/build/unpack go1.10.6.src
cd go/src
env GOROOT_FINAL=/usr/versions/go-1.10 GOROOT_BOOTSTRAP=/usr/versions/go-1.9 ./all.bash
cd ..
rm -fr /tmp/gg
mkdir -p /tmp/gg/usr/versions/go-1.10
tar cf - . | (cd /tmp/gg/usr/versions/go-1.10 ; tar xf -)
# [need to package godoc and gox]
# need to not be at a valid GOROOT
mkdir t
cd t
env GOROOT=/tmp/gg/usr/versions/go-1.10 GOPATH=`pwd` ../bin/go get golang.org/x/tools/cmd/godoc
cp bin/godoc /tmp/gg/usr/versions/go-1.10/bin
env GOROOT=/tmp/gg/usr/versions/go-1.10 GOPATH=`pwd` ../bin/go get github.com/mitchellh/gox
cp bin/gox /tmp/gg/usr/versions/go-1.10/bin
${THOME}/build/create_pkg TRIBv-go-110 /tmp/gg
cd ../..
rm -fr /tmp/gg
