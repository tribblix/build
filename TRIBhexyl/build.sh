#!/bin/sh
#

#
git clone https://github.com/sharkdp/hexyl.git
cd hexyl
cargo build --release

rm -fr /tmp/ll
mkdir -p /tmp/ll/usr/bin
mkdir -p /tmp/ll/usr/share/man/man1

ginstall -s -Dm755 ./target/release/hexyl -t /tmp/ll/usr/bin
cd ..

${THOME}/build/create_pkg TRIBhexyl /tmp/ll
rm -fr /tmp/ll
