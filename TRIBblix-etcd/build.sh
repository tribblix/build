#!/bin/sh
#
# needs go 1.11
#
mkdir e2
cd e2
env GOPATH=`pwd` /usr/versions/go-1.11/bin/go get -v go.etcd.io/etcd
env GOPATH=`pwd` /usr/versions/go-1.11/bin/go get -v go.etcd.io/etcd/etcdctl

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/etcd/bin
cp bin/etcd bin/etcdctl /tmp/ee/opt/tribblix/etcd/bin
cp -R src/go.etcd.io/etcd/Documentation /tmp/ee/opt/tribblix/etcd
cp src/go.etcd.io/etcd/README.md /tmp/ee/opt/tribblix/etcd
cp src/go.etcd.io/etcd/etcdctl/README.md /tmp/ee/opt/tribblix/etcd/README-etcdctl.md
${THOME}/build/create_pkg TRIBblix-etcd /tmp/ee
rm -fr /tmp/ee
