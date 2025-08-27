#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need to checkout precisely the version we're going to build
#
# there are also binaries on https://www.terraform.io/downloads.html
#

mkdir tf
cd tf
git clone https://github.com/hashicorp/terraform
cd terraform
git checkout v1.13.0
env PATH=/usr/versions/go-1.24/bin:$PATH go install .

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
cp `go env GOPATH`/bin/terraform /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/doc/terraform
cp LICENSE README.md /tmp/ee/usr/share/doc/terraform
${THOME}/build/create_pkg TRIBterraform /tmp/ee
rm -fr /tmp/ee
