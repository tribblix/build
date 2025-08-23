#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
# 0.20.23 and later have a broken libc crate
#
git clone https://github.com/eza-community/eza
cd eza
git checkout v0.20.22
env PKG_CONFIG_PATH=/usr/lib/`$THOME/build/getarch`/pkgconfig cargo build --release

rm -fr /tmp/ll

mkdir -p /tmp/ll/usr/bin
ginstall -s -Dm755 ./target/release/eza -t /tmp/ll/usr/bin

# the man page requires pandoc or similar
mkdir -p /tmp/ll/usr/share/man/man1
mkdir -p /tmp/ll/usr/share/man/man5
pandoc --to=man man/eza.1.md --output=/tmp/ll/usr/share/man/man1/eza.1
pandoc --to=man man/eza_colors.5.md --output=/tmp/ll/usr/share/man/man5/eza_colors.5
pandoc --to=man man/eza_colors-explanation.5.md --output=/tmp/ll/usr/share/man/man5/eza_colors-explanation.5

mkdir -p /tmp/ll/usr/share/eza
cp LICENSE.txt README.md /tmp/ll/usr/share/eza

mkdir -p /tmp/ll/usr/share/bash-completion/completions
cp completions/bash/eza /tmp/ll/usr/share/bash-completion/completions
mkdir -p /tmp/ll/usr/share/fish/completions
cp completions/fish/eza.fish /tmp/ll/usr/share/fish/completions
mkdir -p /tmp/ll/usr/share/zsh/site-functions
cp completions/zsh/_eza /tmp/ll/usr/share/zsh/site-functions

${THOME}/build/create_pkg TRIBeza /tmp/ll
rm -fr /tmp/ll
