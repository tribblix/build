#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# either uninstall gdb, or run make.bash rather than all.bash, as the gdb
# test fails on Tribblix
#
# 1.26 release, now default
#
# the tarball has some test files with UTF-8 filenames
#
# ignore any detected libtiff dependency, that's from a test file
#
# the old compile from source path
#
##chmod -R u+w go
##rm -fr go
##env LANG=en_GB.UTF-8 ${THOME}/build/unpack go1.26.10.src
###
##cd go/src
### one of the new tests in 1.26.5 fails, use make.bash not all.bash
##env GOROOT_FINAL=/usr/versions/go-1.26 GOROOT_BOOTSTRAP=/usr/versions/go-1.25 ./make.bash
##cd ..
##rm -fr /tmp/gg
##mkdir -p /tmp/gg/usr/versions/go-1.26
##tar cf - . | (cd /tmp/gg/usr/versions/go-1.26 ; tar xf -)

#
# the new version using the prebuilt image
#
rm -fr /tmp/gg
mkdir -p /tmp/gg/usr/versions
(cd /tmp/gg/usr/versions ; $THOME/build/unpack go1.26.10.illumos-amd64)
mv /tmp/gg/usr/versions/go /tmp/gg/usr/versions/go-1.26
# [package extras - godoc gopls gox]
# need to not be at a valid GOROOT
mkdir t
cd t
env GOROOT=/tmp/gg/usr/versions/go-1.26 GOPATH=`pwd` /tmp/gg/usr/versions/go-1.26/bin/go install golang.org/x/tools/cmd/godoc@latest
cp bin/godoc /tmp/gg/usr/versions/go-1.26/bin
env GOROOT=/tmp/gg/usr/versions/go-1.26 GOPATH=`pwd` /tmp/gg/usr/versions/go-1.26/bin/go install golang.org/x/tools/gopls@latest
cp bin/gopls /tmp/gg/usr/versions/go-1.26/bin
env GOROOT=/tmp/gg/usr/versions/go-1.26 GOPATH=`pwd` /tmp/gg/usr/versions/go-1.26/bin/go install github.com/mitchellh/gox@latest
cp bin/gox /tmp/gg/usr/versions/go-1.26/bin
${THOME}/build/create_pkg TRIBv-go-126 /tmp/gg
cd ../..
rm -fr /tmp/gg
