#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# v1.6.3 fails to build
#
mkdir ~/ud/ff
cd ~/ud/ff
env GOPATH=`pwd` go install github.com/fabiolb/fabio@v1.6.2

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/fabio/bin
cp bin/fabio /tmp/ee/opt/tribblix/fabio/bin
cp pkg/mod/github.com/fabiolb/fabio@*/README.md /tmp/ee/opt/tribblix/fabio
${THOME}/build/create_pkg TRIBblix-fabio /tmp/ee
rm -fr /tmp/ee
