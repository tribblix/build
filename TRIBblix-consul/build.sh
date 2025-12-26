#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir ~/ud/c
cd ~/ud/c
mkdir -p src/github.com/hashicorp/
cd src/github.com/hashicorp/
git clone https://github.com/hashicorp/consul
cd consul
#
git checkout v1.22.2
#
env GOPATH=${HOME}/ud/c PATH=/usr/versions/go-1.25/bin:$PATH gmake
rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/consul/bin
cp bin/consul /tmp/ee/opt/tribblix/consul/bin
cp README.md /tmp/ee/opt/tribblix/consul
${THOME}/build/create_pkg TRIBblix-consul /tmp/ee
rm -fr /tmp/ee
