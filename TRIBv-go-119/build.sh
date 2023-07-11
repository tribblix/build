#!/bin/sh
#
# either uninstall gdb, or run make.bash rather than all.bash, as the gdb
# test fails on Tribblix
#
# 1.19 release, now default
#
# the tarball has some test files with UTF-8 filenames
#
# As of 1.20 we MUST use GOOS=illumos with an illumos bootstrap
# which means that this release must be illumos too
#
# to switch that, build a temporary bootstrap in ~/ud/g19 with
# env GOOS=illumos GOARCH=amd64 GOROOT_BOOTSTRAP=/usr/versions/go-1.18 ./bootstrap.bash
# and use *that* to bootstrap this build
#
chmod -R u+w go
rm -fr go
env LANG=en_GB.UTF-8 ${THOME}/build/unpack go1.19.11.src
cd go/src
#env GOROOT_FINAL=/usr/versions/go-1.19 GOROOT_BOOTSTRAP=/usr/versions/go-1.18 ./all.bash
env GOROOT_FINAL=/usr/versions/go-1.19 GOROOT_BOOTSTRAP=${HOME}/ud/g19/go-illumos-amd64-bootstrap ./all.bash
cd ..
rm -fr /tmp/gg
mkdir -p /tmp/gg/usr/versions/go-1.19
tar cf - . | (cd /tmp/gg/usr/versions/go-1.19 ; tar xf -)
# [need to package godoc and gox]
# need to not be at a valid GOROOT
# go get is no more
# https://golang.org/doc/go-get-install-deprecation
mkdir t
cd t
env GOROOT=/tmp/gg/usr/versions/go-1.19 GOPATH=`pwd` ../bin/go install golang.org/x/tools/cmd/godoc@latest
cp bin/godoc /tmp/gg/usr/versions/go-1.19/bin
env GOROOT=/tmp/gg/usr/versions/go-1.19 GOPATH=`pwd` ../bin/go install github.com/mitchellh/gox@latest
cp bin/gox /tmp/gg/usr/versions/go-1.19/bin
${THOME}/build/create_pkg TRIBv-go-119 /tmp/gg
cd ../..
rm -fr /tmp/gg
