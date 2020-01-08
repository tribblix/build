#!/bin/sh
#
mkdir ~/ud/gg
cd ~/ud/gg

setenv GOPATH `pwd`
git clone --depth 1 https://github.com/gogs/gogs.git gogs
cd gogs
go build -tags "cert" -o gogs


rm -fr /tmp/ee

mkdir -p /tmp/ee/opt/tribblix/gogs/bin
cp gogs /tmp/ee/opt/tribblix/gogs/bin
cp README.md /tmp/ee/opt/tribblix/gogs
${THOME}/build/create_pkg TRIBblix-gogs /tmp/ee
rm -fr /tmp/ee
