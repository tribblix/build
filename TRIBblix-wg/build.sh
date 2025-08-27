#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
rm -fr /tmp/wg123
mkdir -p /tmp/wg123/opt/tribblix/wireguard/bin
mkdir -p /tmp/wg123/opt/tribblix/wireguard/doc
mkdir -p /tmp/wg123/opt/tribblix/wireguard/man/man8

#
# need the vanilla wg utility
#
git clone https://git.zx2c4.com/WireGuard
cd WireGuard/src/tools
gmake LDLIBS='-lnsl -lsocket' CC="gcc -m64"
cp wg /tmp/wg123/opt/tribblix/wireguard/bin
cp man/wg.8 /tmp/wg123/opt/tribblix/wireguard/man/man8
cd ../../..

#
# and nshalman's port of wireguard-go
#
git clone https://github.com/nshalman/wireguard-go
cd wireguard-go
env PATH=/usr/versions/go-1.24/bin:$PATH gmake
cp wireguard-go /tmp/wg123/opt/tribblix/wireguard/bin
cp README.md /tmp/wg123/opt/tribblix/wireguard/doc
cd ../..

${THOME}/build/create_pkg TRIBblix-wg /tmp/wg123

rm -fr /tmp/wg123
