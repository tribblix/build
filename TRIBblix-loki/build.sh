#!/bin/tcsh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir l
cd l
setenv GOPATH `pwd`
mkdir -p src/github.com/grafana
cd src/github.com/grafana
git clone https://github.com/grafana/loki
cd $GOPATH/src/github.com/grafana/loki
# 3.5 pulls in broken and non-portable modernc
git checkout v3.4.5

#
# use gmake to populate the artefacts with the correct flags
#

#
# fix vendor/go.etcd.io/etcd/client/pkg/v3/transport/sockopt_unix.go
# just error for the REUSEPORT case
# import "errors"
# return errors.New("Unsupported\n")
#
cp vendor/github.com/fsouza/fake-gcs-server/internal/backend/time_{linux,solaris}.go
env PATH=/usr/versions/go-1.25/bin:$PATH gmake loki
ls -l ./cmd/loki/loki

#
# build logcli too
#
env PATH=/usr/versions/go-1.25/bin:$PATH gmake logcli
ls -l ./cmd/logcli/logcli

#
# and loki-canary
#
env PATH=/usr/versions/go-1.25/bin:$PATH gmake loki-canary
ls -l ./cmd/loki-canary/loki-canary

#
# and promtail
#
# vendor/github.com/grafana/tail/watch/file_posix.go - build solaris
# vendor/github.com/grafana/tail/tail_posix.go - build solaris
#
env PATH=/usr/versions/go-1.25/bin:$PATH gmake promtail
ls -l ./clients/cmd/promtail/promtail

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/loki/bin
cp ./cmd/loki/loki /tmp/ee/opt/tribblix/loki/bin
cp ./cmd/loki-canary/loki-canary /tmp/ee/opt/tribblix/loki/bin
cp ./cmd/logcli/logcli /tmp/ee/opt/tribblix/loki/bin
cp ./clients/cmd/promtail/promtail /tmp/ee/opt/tribblix/loki/bin
cp README.md /tmp/ee/opt/tribblix/loki
${THOME}/build/create_pkg TRIBblix-loki /tmp/ee
rm -fr /tmp/ee
