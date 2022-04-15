#!/bin/sh
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
#
# need at least 1.17 for the net module
#
/usr/versions/go-1.17/bin/go build ./cmd/loki
ls -l ./loki
# edit vendor/github.com/hpcloud/tail/tail_posix.go - build solaris
/usr/versions/go-1.17/bin/go build ./clients/cmd/promtail
ls -l ./promtail

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/loki/bin
cp ./loki /tmp/ee/opt/tribblix/loki/bin
cp ./promtail /tmp/ee/opt/tribblix/loki/bin
cp README.md /tmp/ee/opt/tribblix/loki
${THOME}/build/create_pkg TRIBblix-loki /tmp/ee
rm -fr /tmp/ee
