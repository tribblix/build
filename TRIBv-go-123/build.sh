#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# either uninstall gdb, or run make.bash rather than all.bash, as the gdb
# test fails on Tribblix
#
# 1.23 release, now default
#
# the tarball has some test files with UTF-8 filenames
#
# As of 1.20, this MUST be GOOS=illumos or the build fails
#
chmod -R u+w go
rm -fr go
env LANG=en_GB.UTF-8 ${THOME}/build/unpack go1.23.5.src
cd go/src
env GOROOT_FINAL=/usr/versions/go-1.23 GOROOT_BOOTSTRAP=/usr/versions/go-1.22 ./all.bash
cd ..
rm -fr /tmp/gg
mkdir -p /tmp/gg/usr/versions/go-1.23
tar cf - . | (cd /tmp/gg/usr/versions/go-1.23 ; tar xf -)
# [package extras - godoc gopls gox]
# need to not be at a valid GOROOT
mkdir t
cd t
env GOROOT=/tmp/gg/usr/versions/go-1.23 GOPATH=`pwd` ../bin/go install golang.org/x/tools/cmd/godoc@latest
cp bin/godoc /tmp/gg/usr/versions/go-1.23/bin
env GOROOT=/tmp/gg/usr/versions/go-1.23 GOPATH=`pwd` ../bin/go install golang.org/x/tools/gopls@latest
cp bin/gopls /tmp/gg/usr/versions/go-1.23/bin
env GOROOT=/tmp/gg/usr/versions/go-1.23 GOPATH=`pwd` ../bin/go install github.com/mitchellh/gox@latest
cp bin/gox /tmp/gg/usr/versions/go-1.23/bin
${THOME}/build/create_pkg TRIBv-go-123 /tmp/gg
cd ../..
rm -fr /tmp/gg
