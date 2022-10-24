#!/bin/sh
#
# (requires go 1.19)
#
mkdir ~/ud/v
cd ~/ud/v
git clone https://github.com/hashicorp/vault.git
cd vault
git checkout v1.12.0

gmake bootstrap
# needs gnu grep for the version check to work
env PATH=/usr/versions/go-1.19/bin:/usr/gnu/bin:$PATH gmake

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/vault/bin
cp bin/vault /tmp/ee/opt/tribblix/vault/bin
cp README.md /tmp/ee/opt/tribblix/vault
${THOME}/build/create_pkg TRIBblix-vault /tmp/ee
rm -fr /tmp/ee
