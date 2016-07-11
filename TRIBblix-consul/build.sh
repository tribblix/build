#!/bin/sh
#
# (requires go 1.6)
#
mkdir ~/ud/c
cd ~/ud/c
mkdir -p src/github.com/hashicorp/
cd src/github.com/hashicorp/
git clone https://github.com/hashicorp/consul
cd consul
# this is the commit for 0.6.4
git checkout 26a0ef8c41aa2252ab4cf0844fc6470c8e1d8256
# CONSUL_DEV to avoid cross-compiling for all platforms
env CONSUL_DEV=1 GOPATH=${HOME}/ud/c GOROOT=/usr/versions/go-1.6 PATH=/usr/versions/go-1.6/bin:$PATH gmake
rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/consul/bin
cp bin/consul /tmp/ee/opt/tribblix/consul/bin
cp README.md /tmp/ee/opt/tribblix/consul
${THOME}/build/create_pkg TRIBblix-consul /tmp/ee
rm -fr /tmp/ee
