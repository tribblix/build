#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir i
cd i
#
# it links against libvips, so needs to find it, and we need
# to find the 64-bit version
#
env PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig GOPATH=`pwd` go install github.com/h2non/imaginary@latest

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/imaginary/bin
cp bin/imaginary /tmp/ee/opt/tribblix/imaginary/bin
cp pkg/mod/github.com/h2non/imaginary@*/README.md /tmp/ee/opt/tribblix/imaginary
cp pkg/mod/github.com/h2non/imaginary@*/LICENSE /tmp/ee/opt/tribblix/imaginary
${THOME}/build/create_pkg TRIBblix-imaginary /tmp/ee
rm -fr /tmp/ee
