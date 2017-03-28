#!/bin/sh
#
# packetbeat needs libpcap
#
# cd to a temporary location first
#
setenv GOPATH `pwd`
mkdir -p $GOPATH/src/github.com/Masterminds
cd $GOPATH/src/github.com/Masterminds
git clone https://github.com/Masterminds/glide.git
cd glide
gmake build

rm -fr /tmp/bbb

#
# copy binaries
#
mkdir -p /tmp/bbb/usr/bin
cp glide /tmp/bbb/usr/bin

#
# and docs
#
mkdir -p /tmp/bbb/usr/share/glide
cp README.md LICENSE /tmp/bbb/usr/share/glide

${THOME}/build/create_pkg TRIBgo-glide /tmp/bbb
rm -fr /tmp/bbb
