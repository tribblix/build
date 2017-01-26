#!/bin/sh
#
# either uninstall gdb, or run make.bash rather than all.bash, as the gdb
# test fails on Tribblix
#
rm -fr go
${THOME}/build/unpack go1.7.5.src
cd go/src
env GOROOT_BOOTSTRAP=/usr/versions/go-1.6 GOROOT_FINAL=/usr/versions/go-1.7 ./all.bash
cd ..
rm -fr /tmp/gg
mkdir -p /tmp/gg/usr/versions/go-1.7
tar cf - . | (cd /tmp/gg/usr/versions/go-1.7 ; tar xf -)
# [need to package godoc and gox]
env GOROOT=/tmp/gg/usr/versions/go-1.7 GOROOT_FINAL=/usr/versions/go-1.7 GOPATH=`pwd` ./bin/go get golang.org/x/tools/cmd/godoc
cp bin/godoc /tmp/gg/usr/versions/go-1.7/bin
env GOROOT=/tmp/gg/usr/versions/go-1.7 GOROOT_FINAL=/usr/versions/go-1.7 GOPATH=`pwd` ./bin/go get github.com/mitchellh/gox
cp bin/gox /tmp/gg/usr/versions/go-1.7/bin
${THOME}/build/create_pkg TRIBv-go-17 /tmp/gg
rm -fr /tmp/gg
