#!/bin/tcsh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the gmake build instructions require docker
#
mkdir l
cd l
setenv GOPATH `pwd`
mkdir -p src/github.com/grafana
cd src/github.com/grafana
git clone https://github.com/grafana/loki
cd $GOPATH/src/github.com/grafana/loki
git checkout v2.9.9
#
# fix vendor/go.etcd.io/etcd/client/pkg/v3/transport/sockopt_unix.go
# just error for the REUSEPORT case
# import "errors"
# return errors.New("Unsupported\n")
#
env PATH=/usr/versions/go-1.22/bin:$PATH go build ./cmd/loki
ls -l ./loki
# vendor/github.com/grafana/tail/watch/file_posix.go - build solaris
# vendor/github.com/grafana/tail/tail_posix.go - build solaris
env PATH=/usr/versions/go-1.22/bin:$PATH go build ./clients/cmd/promtail
ls -l ./promtail

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/loki/bin
cp ./loki /tmp/ee/opt/tribblix/loki/bin
cp ./promtail /tmp/ee/opt/tribblix/loki/bin
cp README.md /tmp/ee/opt/tribblix/loki
${THOME}/build/create_pkg TRIBblix-loki /tmp/ee
rm -fr /tmp/ee
