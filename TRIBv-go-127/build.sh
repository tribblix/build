#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# either uninstall gdb, or run make.bash rather than all.bash, as the gdb
# test fails on Tribblix
#
# 1.27 release, not yet default
#
# the tarball has some test files with UTF-8 filenames
#
# ignore any detected libtiff dependency, that's from a test file
#
chmod -R u+w go
rm -fr go
env LANG=en_GB.UTF-8 ${THOME}/build/unpack go1.27.1.src
#
cd go/src
# one of the new tests in 1.26.5 fails, use make.bash not all.bash
env GOROOT_FINAL=/usr/versions/go-1.27 GOROOT_BOOTSTRAP=/usr/versions/go-1.26 ./make.bash
cd ..
rm -fr /tmp/gg
mkdir -p /tmp/gg/usr/versions/go-1.27
tar cf - . | (cd /tmp/gg/usr/versions/go-1.27 ; tar xf -)
# package gopls
# need to not be at a valid GOROOT
mkdir t
cd t
env GOROOT=/tmp/gg/usr/versions/go-1.27 GOPATH=`pwd` ../bin/go install golang.org/x/tools/gopls@latest
cp bin/gopls /tmp/gg/usr/versions/go-1.27/bin
${THOME}/build/create_pkg TRIBv-go-127 /tmp/gg
cd ../..
rm -fr /tmp/gg
