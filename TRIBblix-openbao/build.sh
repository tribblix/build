#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir ~/ud/v
cd ~/ud/v
git clone https://github.com/openbao/openbao.git
cd openbao
git checkout v2.3.1

# needs gnu grep for the version check to work
#
# bbolt 1.4.1 is broken, patch https://github.com/etcd-io/bbolt/pull/990
#
env PATH=/usr/versions/go-1.24/bin:/usr/gnu/bin:${HOME}/go/bin:$PATH gmake bootstrap
env PATH=/usr/versions/go-1.24/bin:/usr/gnu/bin:${HOME}/go/bin:$PATH gmake

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/openbao/bin
cp bin/bao /tmp/ee/opt/tribblix/openbao/bin
cp README.md LICENSE /tmp/ee/opt/tribblix/openbao
${THOME}/build/create_pkg TRIBblix-openbao /tmp/ee
rm -fr /tmp/ee
