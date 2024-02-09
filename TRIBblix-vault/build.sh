#!/bin/sh
#
mkdir ~/ud/v
cd ~/ud/v
git clone https://github.com/hashicorp/vault.git
cd vault
git checkout v1.15.5

# needs gnu grep for the version check to work
env PATH=/usr/versions/go-1.21/bin:/usr/gnu/bin:$PATH gmake bootstrap
env PATH=/usr/versions/go-1.21/bin:/usr/gnu/bin:$PATH gmake

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/vault/bin
cp bin/vault /tmp/ee/opt/tribblix/vault/bin
cp README.md /tmp/ee/opt/tribblix/vault
${THOME}/build/create_pkg TRIBblix-vault /tmp/ee
rm -fr /tmp/ee
