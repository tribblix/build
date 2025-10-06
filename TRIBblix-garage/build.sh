#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
$THOME/build/unpack -n garage garage-v2.1.0
cd garage-v2.1.0
env CARGO_PROFILE_RELEASE_LTO=false PKG_CONFIG_PATH=/usr/lib/`$THOME/build/getarch`/pkgconfig SODIUM_USE_PKG_CONFIG=1 cargo build --release

rm -fr /tmp/ll

mkdir -p /tmp/ll/opt/tribblix/garage
ginstall -s -Dm755 ./target/release/garage -t /tmp/ll/opt/tribblix/garage

mkdir -p /tmp/ll/opt/tribblix/garage/share
cp LICENSE README.md /tmp/ll/opt/tribblix/garage/share

cd ..

${THOME}/build/create_pkg TRIBblix-garage /tmp/ll
rm -fr /tmp/ll
