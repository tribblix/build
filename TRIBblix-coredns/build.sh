#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/unpack coredns-1.13.2
cd coredns-1.13.2
env PATH=/usr/versions/go-1.25/bin:$PATH gmake

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/coredns/bin
cp coredns /tmp/ee/opt/tribblix/coredns/bin
cp README.md /tmp/ee/opt/tribblix/coredns
mkdir -p /tmp/ee/opt/tribblix/coredns/man/man1
mkdir -p /tmp/ee/opt/tribblix/coredns/man/man5
mkdir -p /tmp/ee/opt/tribblix/coredns/man/man7
cp man/*.1 /tmp/ee/opt/tribblix/coredns/man/man1
cp man/*.5 /tmp/ee/opt/tribblix/coredns/man/man5
cp man/*.7 /tmp/ee/opt/tribblix/coredns/man/man7
${THOME}/build/create_pkg TRIBblix-coredns /tmp/ee
rm -fr /tmp/ee
