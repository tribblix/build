#!/bin/sh
#

mkdir ec
cd ec
setenv GOPATH `pwd`
mkdir -p src/github.com/aws
cd src/github.com/aws
git clone git@github.com:aws/amazon-ecs-cli.git
cd amazon-ecs-cli
#
# check out the precise version we want
#
git checkout v1.0.0

#
# a vanilla 'gmake build' fails with Termios errors, because
# it turns cgo off, so run the build step explicitly
#
env CGO_CFLAGS=-std=gnu99 go build -installsuffix cgo -a -ldflags '-s' -o bin/local/ecs-cli ./ecs-cli/

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
cp bin/local/ecs-cli /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/doc/ecs-cli
cp LICENSE NOTICE README.md /tmp/ee/usr/share/doc/ecs-cli
${THOME}/build/create_pkg TRIBaws-ecs-cli /tmp/ee
rm -fr /tmp/ee
