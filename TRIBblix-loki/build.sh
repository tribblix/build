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
go build ./cmd/loki
# edit vendor/github.com/Azure/azure-storage-blob-go/azblob/zc_mmf_unix.go
# -> it's unix.Mmap and unix.Munmap, not syscall, and build solaris
go build ./cmd/loki
ls -l ./loki
go build ./cmd/promtail
# edit vendor/github.com/hpcloud/tail/tail_posix.go - build solaris
go build ./cmd/promtail

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/loki/bin
cp ./loki /tmp/ee/opt/tribblix/loki/bin
cp ./promtail /tmp/ee/opt/tribblix/loki/bin
cp README.md /tmp/ee/opt/tribblix/loki
${THOME}/build/create_pkg TRIBblix-loki /tmp/ee
rm -fr /tmp/ee
