#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
git clone https://github.com/sharkdp/fd.git
cd fd
git checkout v10.3.0
#
cargo build --release

rm -fr /tmp/ll
mkdir -p /tmp/ll/usr/bin
mkdir -p /tmp/ll/usr/share/man/man1
mkdir -p /tmp/ll/usr/share/fd

ginstall -s -Dm755 ./target/release/fd -t /tmp/ll/usr/bin
mkdir -p /tmp/ll/usr/share/man/man1
cp doc/fd.1 /tmp/ll/usr/share/man/man1
cp LICENSE* README.md /tmp/ll/usr/share/fd
cd ..

${THOME}/build/create_pkg TRIBfd /tmp/ll
rm -fr /tmp/ll
