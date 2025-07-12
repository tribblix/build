#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

git clone https://github.com/anvilsecure/pqcscan
cd pqcscan
git checkout 0.7.0
cargo build --release

rm -fr /tmp/llp

mkdir -p /tmp/llp/usr/bin
ginstall -s -Dm755 ./target/release/pqcscan -t /tmp/llp/usr/bin

mkdir -p /tmp/llp/usr/share/pqcscan
cp LICENSE README.md /tmp/llp/usr/share/pqcscan

${THOME}/build/create_pkg TRIBpqcscan /tmp/llp
rm -fr /tmp/llp
