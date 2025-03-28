#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# pinned at 24.1.0 due to containerd/console
#
env GOPATH=`pwd` go install github.com/antonmedv/fx@24.1.0
rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/fx
mkdir -p /tmp/cs/usr/share/man/man1
cp bin/fx /tmp/cs/usr/bin
cp pkg/mod/github.com/antonmedv/fx@*/README.md pkg/mod/github.com/antonmedv/fx@*/LICENSE /tmp/cs/usr/share/fx
${THOME}/build/create_pkg TRIBfx /tmp/cs
rm -fr /tmp/cs
