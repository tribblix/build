#!/bin/sh
#
# (requires go 1.7)
#
mkdir ~/ud/c
cd ~/ud/c
mkdir -p src/github.com/hashicorp/
cd src/github.com/hashicorp/
git clone https://github.com/hashicorp/consul
cd consul
# this is the commit for 0.7.1
git checkout a9455cd4fc2809570ff1855c37d6ffc2449bd42f
# CONSUL_DEV to avoid cross-compiling for all platforms
env CONSUL_DEV=1 GOPATH=${HOME}/ud/c GOROOT=/usr/versions/go-1.7 PATH=/usr/versions/go-1.7/bin:$PATH gmake
rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/consul/bin
cp bin/consul /tmp/ee/opt/tribblix/consul/bin
cp README.md /tmp/ee/opt/tribblix/consul
${THOME}/build/create_pkg TRIBblix-consul /tmp/ee
rm -fr /tmp/ee
