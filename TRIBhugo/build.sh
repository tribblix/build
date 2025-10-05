#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env PATH=/usr/versions/go-1.24/bin:$PATH GOPATH=`pwd` go install github.com/gohugoio/hugo@v0.151.0

rm -fr /tmp/ll
mkdir -p /tmp/ll/usr/bin
mkdir -p /tmp/ll/usr/share/hugo

ginstall -Dm755 ./bin/hugo -t /tmp/ll/usr/bin
cp pkg/mod/github.com/gohugoio/hugo@v*/README.md /tmp/ll/usr/share/hugo
cp pkg/mod/github.com/gohugoio/hugo@v*/LICENSE /tmp/ll/usr/share/hugo
cd ..

${THOME}/build/create_pkg TRIBhugo /tmp/ll
rm -fr /tmp/ll
