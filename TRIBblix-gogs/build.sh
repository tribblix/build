#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir ~/ud/gg
cd ~/ud/gg

git clone --depth 1 https://github.com/gogs/gogs.git gogs
cd gogs
env GOPATH=`pwd`/.. go build -tags "cert" -o gogs

# sanity check, run './gogs web'

rm -fr /tmp/ee

mkdir -p /tmp/ee/opt/tribblix/gogs/bin
cp gogs /tmp/ee/opt/tribblix/gogs/bin
cp README.md /tmp/ee/opt/tribblix/gogs
${THOME}/build/create_pkg TRIBblix-gogs /tmp/ee
rm -fr /tmp/ee
