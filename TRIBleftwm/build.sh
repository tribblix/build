#!/bin/sh
#
# you need to run with
# XDG_RUNTIME_DIR=/tmp/leftwm.${USER}
# export XDG_RUNTIME_DIR
# mkdir -m 0700 -p $XDG_RUNTIME_DIR
# dbus-launch leftwm &
#
# and I needed modkey to be Mod1 not Mod4 in ~/.config/leftwm/config.toml
# nb Mod1 = ALT_L
#

#
git clone https://github.com/leftwm/leftwm.git
cd leftwm
cargo build --release
cd ..
#
# leftwm-theme needs gnu ar as gar in your path
#
# many of the themes have extra dependencies, see
# https://github.com/leftwm/leftwm
#
git clone https://github.com/leftwm/leftwm-theme.git
cd leftwm-theme
cargo build --release
cd ..

rm -fr /tmp/ll
mkdir -p /tmp/ll/usr/bin

cd leftwm
ginstall -s -Dm755 ./target/release/leftwm ./target/release/leftwm-worker ./target/release/leftwm-state ./target/release/leftwm-check ./target/release/leftwm-command -t /tmp/ll/usr/bin
cd ..
cd leftwm-theme
ginstall -s -Dm755 ./target/release/leftwm-theme -t /tmp/ll/usr/bin
cd ..
${THOME}/build/create_pkg TRIBleftwm /tmp/ll
rm -fr /tmp/ll
