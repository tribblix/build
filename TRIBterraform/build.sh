#!/bin/sh
#

mkdir tf
cd tf
setenv GOPATH `pwd`
mkdir -p src/github.com/hashicorp
cd src/github.com/hashicorp
git clone git@github.com:hashicorp/terraform.git
cd terraform

env PATH=${GOPATH}/bin:$PATH gmake dev

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
cp bin/terraform /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/doc/terraform
cp LICENSE README.md /tmp/ee/usr/share/doc/terraform
${THOME}/build/create_pkg TRIBterraform /tmp/ee
rm -fr /tmp/ee
