#!/bin/sh
#
# this is old, and the old boot2docker has been replaced by docker
# toolbox
#
# building a working boot2docker-cli is a bit tricky, vbox on solaris
# doesn't support cli manipulation of hostonly interfaces, so you have
# to create one by hand in vbox and just get boot2docker to use it
#
# edit virtualbox/hostonlynet.go to return vboxnet0 if create fails, like so
# 
# 38c38,39
# < 		return nil, err
# ---
# > 	       	// default to vboxnet0
# > 		return &HostonlyNet{Name: "vboxnet0"}, nil
#
# env GOPATH=`pwd` go get github.com/boot2docker/boot2docker-cli
# ( setenv GOPATH `pwd` ; cd src/github.com/boot2docker/boot2docker-cli ; gmake goinstall )
# edit the file...
# env GOPATH=`pwd` go clean github.com/boot2docker/boot2docker-cli
# env GOPATH=`pwd` go build github.com/boot2docker/boot2docker-cli
#
rm -fr /tmp/bd
mkdir -p /tmp/bd/usr/bin
cp boot2docker-cli /tmp/bd/usr/bin/boot2docker
${THOME}/build/create_pkg TRIBboot2docker /tmp/bd
rm -fr /tmp/bd
