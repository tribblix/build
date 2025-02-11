#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
$THOME/build/unpack difftastic-0.62.0
cd difftastic-0.62.0
#
# in the past --release took hours without finishing
#
cargo build --release

rm -fr /tmp/ll
mkdir -p /tmp/ll/usr/bin
mkdir -p /tmp/ll/usr/share/difftastic
mkdir -p /tmp/ll/usr/share/man/man1

ginstall -s -Dm755 ./target/release/difft -t /tmp/ll/usr/bin
cp LICENSE* README.md /tmp/ll/usr/share/difftastic
cp difft.1 /tmp/ll/usr/share/man/man1
cd ..

${THOME}/build/create_pkg TRIBdifftastic /tmp/ll
rm -fr /tmp/ll
