#!/bin/sh
#
mkdir ~/ud/c
cd ~/ud/c
mkdir -p src/github.com/hashicorp/
cd src/github.com/hashicorp/
git clone https://github.com/hashicorp/consul
cd consul
# this is the commit for 1.11.2
git checkout 37c7d06b4e5511915814f3f59bc040951f9128b0
#
# CONSUL_DEV to avoid cross-compiling for all platforms
env CONSUL_DEV=1 GOPATH=${HOME}/ud/c GOROOT=/usr/versions/go-1.16 PATH=/usr/versions/go-1.16/bin:$PATH gmake
rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/consul/bin
cp bin/consul /tmp/ee/opt/tribblix/consul/bin
cp README.md /tmp/ee/opt/tribblix/consul
${THOME}/build/create_pkg TRIBblix-consul /tmp/ee
rm -fr /tmp/ee
