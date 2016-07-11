#!/bin/sh
#
rm -fr go
${THOME}/build/unpack go1.6.2.src
cd go/src
env GOROOT_BOOTSTRAP=/usr/versions/go-1.5 GOROOT_FINAL=/usr/versions/go-1.6 ./all.bash
cd ..
rm -fr /tmp/gg
mkdir -p /tmp/gg/usr/versions/go-1.6
tar cf - . | (cd /tmp/gg/usr/versions/go-1.6 ; tar xf -)
# [need to package godoc and gox]
env GOROOT=/tmp/gg/usr/versions/go-1.6 GOROOT_FINAL=/usr/versions/go-1.6 GOPATH=`pwd` ./bin/go get golang.org/x/tools/cmd/godoc
env GOROOT=/tmp/gg/usr/versions/go-1.6 GOROOT_FINAL=/usr/versions/go-1.6 GOPATH=`pwd` ./bin/go get github.com/mitchellh/gox
cp bin/gox /tmp/gg/usr/versions/go-1.6/bin
${THOME}/build/create_pkg TRIBv-go-16 /tmp/gg
rm -fr /tmp/gg
