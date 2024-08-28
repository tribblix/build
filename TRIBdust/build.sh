#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
$THOME/build/unpack dust-1.1.1
cd dust-1.1.1
cargo build --release

rm -fr /tmp/ll

mkdir -p /tmp/ll/usr/bin
ginstall -s -Dm755 ./target/release/dust -t /tmp/ll/usr/bin

mkdir -p /tmp/ll/usr/share/dust
cp LICENSE README.md /tmp/ll/usr/share/dust

mkdir -p /tmp/ll/usr/share/man/man1
cp man-page/dust.1 /tmp/ll/usr/share/man/man1
cd ..

${THOME}/build/create_pkg TRIBdust /tmp/ll
rm -fr /tmp/ll
