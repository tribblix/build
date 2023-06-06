#!/bin/sh
#
# either uninstall gdb, or run make.bash rather than all.bash, as the gdb
# test fails on Tribblix
#
# 1.20 release, not yet default
#
# the tarball has some test files with UTF-8 filenames
#
# As of 1.20, this MUST be GOOS=illumos or the build fails
# so you need an illumos bootstrap compiler
#
chmod -R u+w go
rm -fr go
env LANG=en_GB.UTF-8 ${THOME}/build/unpack go1.20.5.src
cd go/src
env GOROOT_FINAL=/usr/versions/go-1.20 GOROOT_BOOTSTRAP=/usr/versions/go-1.19 ./all.bash
cd ..
rm -fr /tmp/gg
mkdir -p /tmp/gg/usr/versions/go-1.20
tar cf - . | (cd /tmp/gg/usr/versions/go-1.20 ; tar xf -)
# [need to package godoc and gox]
# need to not be at a valid GOROOT
# go get is no more
# https://golang.org/doc/go-get-install-deprecation
mkdir t
cd t
env GOROOT=/tmp/gg/usr/versions/go-1.20 GOPATH=`pwd` ../bin/go install golang.org/x/tools/cmd/godoc@latest
cp bin/godoc /tmp/gg/usr/versions/go-1.20/bin
env GOROOT=/tmp/gg/usr/versions/go-1.20 GOPATH=`pwd` ../bin/go install github.com/mitchellh/gox@latest
cp bin/gox /tmp/gg/usr/versions/go-1.20/bin
${THOME}/build/create_pkg TRIBv-go-120 /tmp/gg
cd ../..
rm -fr /tmp/gg
