#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir e2
cd e2
git clone https://github.com/etcd-io/etcd
cd etcd
#
# it must be a release version, otherwise patroni (and others) will choke
# on trying to talk to it
#
git checkout v3.6.4
env PATH=/usr/versions/go-1.24/bin:$PATH gmake

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/etcd/bin
cp bin/etcd* /tmp/ee/opt/tribblix/etcd/bin
cp -R Documentation /tmp/ee/opt/tribblix/etcd
cp README.md /tmp/ee/opt/tribblix/etcd
cp etcdctl/README.md /tmp/ee/opt/tribblix/etcd/README-etcdctl.md
cp etcdutl/README.md /tmp/ee/opt/tribblix/etcd/README-etcdutl.md
${THOME}/build/create_pkg TRIBblix-etcd /tmp/ee
rm -fr /tmp/ee
