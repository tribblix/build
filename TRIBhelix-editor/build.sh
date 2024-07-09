#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
git clone https://github.com/helix-editor/helix
cd helix
cargo build --release

#
# we install into usr/versions because it wants the runtime
# directory installed into the binary location
#
rm -fr /tmp/ll
mkdir -p /tmp/ll/usr/versions/helix

gtar cf - runtime | (cd /tmp/ll/usr/versions/helix ; gtar xf -)
rm -fr /tmp/ll/usr/versions/helix/runtime/grammars/sources

ginstall -s -Dm755 ./target/release/hx -t /tmp/ll/usr/versions/helix

mkdir -p /tmp/ll/usr/bin
ln -s ../../usr/versions/helix/hx /tmp/ll/usr/bin

mkdir -p /tmp/ll/usr/share/applications
cp contrib/Helix.desktop /tmp/ll/usr/share/applications
mkdir -p /tmp/ll/usr/share/icons/hicolor/256x256
cp contrib/helix.png /tmp/ll/usr/share/icons/hicolor/256x256

mkdir -p /tmp/ll/usr/share/bash-completion/completions
cp contrib/completion/hx.bash /tmp/ll/usr/share/bash-completion/completions/hx
mkdir -p /tmp/ll/usr/share/fish/completions
cp contrib/completion/hx.fish /tmp/ll/usr/share/fish/completions
mkdir -p /tmp/ll/usr/share/zsh/site-functions
cp contrib/completion/hx.zsh /tmp/ll/usr/share/zsh/site-functions/_hx

cd ..
${THOME}/build/create_pkg TRIBhelix-editor /tmp/ll
rm -fr /tmp/ll
