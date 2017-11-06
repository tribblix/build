#!/bin/tcsh
#
# (requires go 1.9)
#
mkdir ~/ud/v
cd ~/ud/v
setenv GOPATH `pwd`
cd $GOPATH/src/github.com/hashicorp
git clone https://github.com/hashicorp/vault.git
cd vault
gmake bootstrap
# needs gnu grep
env PATH=/usr/gnu/bin:$PATH gmake dev

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/vault/bin
cp bin/vault /tmp/ee/opt/tribblix/vault/bin
cp README.md /tmp/ee/opt/tribblix/vault
${THOME}/build/create_pkg TRIBblix-vault /tmp/ee
rm -fr /tmp/ee
