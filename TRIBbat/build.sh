#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
git clone https://github.com/sharkdp/bat.git
cd bat
git checkout v0.26.0
env AR=/usr/gnu/bin/ar cargo build --release

rm -fr /tmp/ll
mkdir -p /tmp/ll/usr/bin
mkdir -p /tmp/ll/usr/share/man/man1

ginstall -s -Dm755 ./target/release/bat -t /tmp/ll/usr/bin
cp target/release/build/bat-*/out/assets/manual/bat.1 /tmp/ll/usr/share/man/man1
cd ..

${THOME}/build/create_pkg TRIBbat /tmp/ll
rm -fr /tmp/ll
