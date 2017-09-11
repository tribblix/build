#!/bin/sh
#
# need to checkout precisely the version we're going to build
#
# having build problems with v0.10.x
#

mkdir tf
cd tf
setenv GOPATH `pwd`
mkdir -p src/github.com/hashicorp
cd src/github.com/hashicorp
git clone git@github.com:hashicorp/terraform.git
cd terraform
git checkout v0.9.11

#
# explicitly specify the target, and create a production build
# rather than a development build
#
env PATH=${GOPATH}/bin:$PATH XC_OS=solaris XC_ARCH=amd64 gmake bin

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
cp bin/terraform /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/doc/terraform
cp LICENSE README.md /tmp/ee/usr/share/doc/terraform
${THOME}/build/create_pkg TRIBterraform /tmp/ee
rm -fr /tmp/ee
