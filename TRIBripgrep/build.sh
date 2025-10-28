#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack ripgrep-15.1.0
cd ripgrep-15.1.0

env PKG_CONFIG_PATH=/usr/lib/`$THOME/build/getarch`/pkgconfig cargo build --release

rm -fr /tmp/rrp
mkdir -p /tmp/rrp/usr/bin
ginstall -s -Dm755 ./target/release/rg -t /tmp/rrp/usr/bin
mkdir -p /tmp/rrp/usr/share/man/man1
./target/release/rg --generate man > /tmp/rrp/usr/share/man/man1/rg.1

${THOME}/build/create_pkg TRIBripgrep /tmp/rrp
rm -fr /tmp/rrp
