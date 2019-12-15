#!/bin/sh
#
# need to checkout precisely the version we're going to build
#
# there are also binaries on https://www.terraform.io/downloads.html
#

mkdir tf
cd tf
setenv GOPATH `pwd`
mkdir -p src/github.com/hashicorp
cd src/github.com/hashicorp
git clone git@github.com:hashicorp/terraform.git
cd terraform
git checkout v0.12.18

#
# explicitly specify the target, and create a production build
# rather than a development build
#
env PATH=PATH=/usr/versions/go-1.13/bin:${GOPATH}/bin:$PATH XC_OS=solaris XC_ARCH=amd64 gmake bin

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
cp bin/terraform /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/doc/terraform
cp LICENSE README.md /tmp/ee/usr/share/doc/terraform
${THOME}/build/create_pkg TRIBterraform /tmp/ee
rm -fr /tmp/ee
