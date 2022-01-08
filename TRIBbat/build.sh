#!/bin/sh
#

#
git clone https://github.com/sharkdp/bat.git
cd bat
env AR=/usr/gnu/bin/ar cargo build --release
cd ..

rm -fr /tmp/ll
mkdir -p /tmp/ll/usr/bin
mkdir -p /tmp/ll/usr/share/man/man1

cd bat
ginstall -s -Dm755 ./target/release/bat -t /tmp/ll/usr/bin
cp target/release/build/bat-*/out/assets/manual/bat.1 /tmp/ll/usr/share/man/man1
cd ..

${THOME}/build/create_pkg TRIBbat /tmp/ll
rm -fr /tmp/ll
