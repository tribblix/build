#!/bin/sh
#
git clone https://github.com/ulyssa/iamb
cd iamb
cargo build --release

rm -fr /tmp/ll

mkdir -p /tmp/ll/usr/bin
ginstall -s -Dm755 ./target/release/iamb -t /tmp/ll/usr/bin

mkdir -p /tmp/ll/usr/share/iamb
cp LICENSE README.md /tmp/ll/usr/share/iamb

${THOME}/build/create_pkg TRIBiamb /tmp/ll
rm -fr /tmp/ll
