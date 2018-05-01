#!/bin/sh
#

mkdir c
cd c
setenv GOPATH `pwd`

go get -u github.com/knqyf263/crtsh

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
cp bin/crtsh /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/doc/crtsh
cp src/github.com/knqyf263/crtsh/LICENSE src/github.com/knqyf263/crtsh/README.md /tmp/ee/usr/share/doc/crtsh
${THOME}/build/create_pkg TRIBcrtsh /tmp/ee
rm -fr /tmp/ee

cd ..
rm -fr c
