#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

$THOME/build/unpack monolith-2.8.3
cd monolith-2.8.3
cargo build --release

rm -fr /tmp/lm
mkdir -p /tmp/lm/usr/bin

ginstall -s -Dm755 ./target/release/monolith -t /tmp/lm/usr/bin
cd ..

${THOME}/build/create_pkg TRIBmonolith /tmp/lm
rm -fr /tmp/lm
