#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
git clone https://github.com/getzola/zola.git
cd zola
cargo build --release

rm -fr /tmp/ll

mkdir -p /tmp/ll/usr/bin
ginstall -s -Dm755 ./target/release/zola -t /tmp/ll/usr/bin

mkdir -p /tmp/ll/usr/share/zola
cp LICENSE README.md /tmp/ll/usr/share/zola

${THOME}/build/create_pkg TRIBzola /tmp/ll
rm -fr /tmp/ll
