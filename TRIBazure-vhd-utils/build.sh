#!/bin/sh
#

mkdir m
cd m
setenv GOPATH `pwd`

go get github.com/Microsoft/azure-vhd-utils

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
cp bin/azure-vhd-utils /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/doc/azure-vhd-utils
cp src/github.com/Microsoft/azure-vhd-utils/LICENSE src/github.com/Microsoft/azure-vhd-utils/README.md /tmp/ee/usr/share/doc/azure-vhd-utils
${THOME}/build/create_pkg TRIBazure-vhd-utils /tmp/ee
rm -fr /tmp/ee

cd ..
rm -fr m
