#!/bin/sh
#
mkdir ~/ud/gg
cd ~/ud/gg

setenv GOPATH `pwd`
env GOPATH=`pwd` go get -u -tags "cert" github.com/gogs/gogs
cd src/github.com/gogs/gogs
go build -tags "cert"


rm -fr /tmp/ee

mkdir -p /tmp/ee/opt/tribblix/gogs/bin
cp gogs /tmp/ee/opt/tribblix/gogs/bin
cp README.md /tmp/ee/opt/tribblix/gogs
${THOME}/build/create_pkg TRIBblix-gogs /tmp/ee
rm -fr /tmp/ee
