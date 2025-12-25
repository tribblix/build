#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
git clone https://github.com/Orange-OpenSource/hurl
cd hurl
cargo build --release

rm -fr /tmp/ll

mkdir -p /tmp/ll/usr/bin
ginstall -s -Dm755 ./target/release/hurl -t /tmp/ll/usr/bin

mkdir -p /tmp/ll/usr/share/hurl
cp LICENSE README.md /tmp/ll/usr/share/hurl

mkdir -p /tmp/ll/usr/share/man/man1
cp docs/manual/*.1 /tmp/ll/usr/share/man/man1

${THOME}/build/create_pkg TRIBhurl /tmp/ll
rm -fr /tmp/ll
