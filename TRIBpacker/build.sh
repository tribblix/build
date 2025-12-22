#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir p
cd p
setenv GOPATH `pwd`
mkdir -p src/github.com/hashicorp
cd src/github.com/hashicorp
git clone https://github.com/hashicorp/packer
cd packer
git checkout v1.14.3
env PATH=/usr/versions/go-1.25/bin:$PATH go build -o bin/packer .


rm -fr /tmp/cgp
mkdir -p /tmp/cgp/usr/bin
mkdir -p /tmp/cgp/usr/share/packer
cp ./bin/packer /tmp/cgp/usr/bin
cp ./README.md ./LICENSE /tmp/cgp/usr/share/packer
${THOME}/build/create_pkg TRIBpacker /tmp/cgp
rm -fr /tmp/cgp

cd ..
