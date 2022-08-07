#!/bin/sh
#

#
git clone https://github.com/ogham/exa
cd exa
# we need a libc crate that knows we have getgrouplist()
cargo update -p libc --precise 0.2.125
cargo build --release
# and now we've downloaded users we need to fix that
sed -i s:solaris:illumos: ${HOME}/.cargo/registry/src/github.com-1ecc6299db9ec823/users-0.11.0/src/*.rs
cargo build --release

# the man page requires pandoc or similar

rm -fr /tmp/ll

mkdir -p /tmp/ll/usr/bin
ginstall -s -Dm755 ./target/release/exa -t /tmp/ll/usr/bin

mkdir -p /tmp/ll/usr/share/exa
cp LICENCE README.md /tmp/ll/usr/share/exa

mkdir -p /tmp/ll/usr/share/bash-completion/completions
cp completions/bash/exa /tmp/ll/usr/share/bash-completion/completions
mkdir -p /tmp/ll/usr/share/fish/completions
cp completions/fish/exa.fish /tmp/ll/usr/share/fish/completions
mkdir -p /tmp/ll/usr/share/zsh/site-functions
cp completions/zsh/_exa /tmp/ll/usr/share/zsh/site-functions

${THOME}/build/create_pkg TRIBexa /tmp/ll
rm -fr /tmp/ll
