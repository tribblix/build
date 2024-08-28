#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
git clone https://github.com/sharkdp/fd.git
cd fd
#
# disable jemalloc, as it can't build it sanely
# Cargo.toml src/main.rs
# simplest is to replace one of the target os in the guard by "illumos"
#
cargo build --release
# needs the same users tweak as exa, if you haven't done that already
sed -i s:solaris:illumos: ${HOME}/.cargo/registry/src/github.com-1ecc6299db9ec823/users-0.11.0/src/*.rs
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
