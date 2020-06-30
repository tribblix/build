#!/bin/sh
#
mkdir ~/ud/c
cd ~/ud/c
mkdir -p src/github.com/hashicorp/
cd src/github.com/hashicorp/
git clone https://github.com/hashicorp/consul
cd consul
# this is the commit for 1.8.0
git checkout 3111cb8c7df8545abaa0c96347996b5341ff625d
#
# in github.com/gofrs/flock@v0.0.0-20190320160742-5135e617513b/flock_unix.go
# use x/sys/unix. not syscall
#
# CONSUL_DEV to avoid cross-compiling for all platforms
env CONSUL_DEV=1 GOPATH=${HOME}/ud/c GOROOT=/usr/versions/go-1.14 PATH=/usr/versions/go-1.14/bin:$PATH gmake
rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/consul/bin
cp bin/consul /tmp/ee/opt/tribblix/consul/bin
cp README.md /tmp/ee/opt/tribblix/consul
${THOME}/build/create_pkg TRIBblix-consul /tmp/ee
rm -fr /tmp/ee
