#!/bin/sh
#
# consul needs gox
#
mkdir -p ~/ud/x
cd ~/ud/x
env GOPATH=`pwd` go get github.com/mitchellh/gox
rm -fr /tmp/gx
mkdir -p /tmp/gx/usr/versions/go-1.5/bin
cp bin/gox /tmp/gx/usr/versions/go-1.5/bin
${THOME}/build/create_pkg TRIBv-go-15-gox /tmp/gx
rm -fr /tmp/gx
