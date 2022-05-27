#!/bin/tcsh
#
mkdir 5
cd 5
setenv GOPATH `pwd`
go get github.com/peak/s5cmd

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
cp bin/s5cmd /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/s5cmd
cd pkg/mod/github.com/peak/s5cmd@v*
cp LICENSE README.md /tmp/ee/usr/share/s5cmd
${THOME}/build/create_pkg TRIBs5cmd /tmp/ee
rm -fr /tmp/ee
