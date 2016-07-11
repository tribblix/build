#!/bin/sh
#
# needs go 1.6
#
cd etcd-2.3.6
env GOROOT=/usr/versions/go-1.6 PATH=/usr/versions/go-1.6/bin:/usr/xpg4/bin:$PATH ./build 
#go test basically doesn't work
#env GOROOT=/usr/versions/go-1.6 PATH=/usr/versions/go-1.6/bin:/usr/xpg4/bin:$PATH ./test
rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/etcd/bin
cp bin/etcd bin/etcdctl /tmp/ee/opt/tribblix/etcd/bin
cp -R Documentation /tmp/ee/opt/tribblix/etcd
cp README.md /tmp/ee/opt/tribblix/etcd
cp etcdctl/README.md /tmp/ee/opt/tribblix/etcd/README-etcdctl.md
${THOME}/build/create_pkg TRIBblix-etcd /tmp/ee
rm -fr /tmp/ee
