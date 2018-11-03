#!/bin/sh
#
# either uninstall gdb, or run make.bash rather than all.bash, as the gdb
# test fails on Tribblix
#
# There have been issues with GOROOT_FINAL causing test failures
# https://github.com/golang/go/issues/20284
#
# 1.11 release, not yet default
# when default, update alias and reinstate /usr/bin links
#
rm -fr go
${THOME}/build/unpack go1.11.2.src
cd go/src
env GOROOT_FINAL=/usr/versions/go-1.11 GOROOT_BOOTSTRAP=/usr/versions/go-1.10 ./all.bash
cd ..
rm -fr /tmp/gg
mkdir -p /tmp/gg/usr/versions/go-1.11
tar cf - . | (cd /tmp/gg/usr/versions/go-1.11 ; tar xf -)
# [need to package godoc and gox]
# need to not be at a valid GOROOT
mkdir t
cd t
env GOROOT=/tmp/gg/usr/versions/go-1.11 GOPATH=`pwd` ../bin/go get golang.org/x/tools/cmd/godoc
cp bin/godoc /tmp/gg/usr/versions/go-1.11/bin
env GOROOT=/tmp/gg/usr/versions/go-1.11 GOPATH=`pwd` ../bin/go get github.com/mitchellh/gox
cp bin/gox /tmp/gg/usr/versions/go-1.11/bin
${THOME}/build/create_pkg TRIBv-go-111 /tmp/gg
cd ../..
rm -fr /tmp/gg
