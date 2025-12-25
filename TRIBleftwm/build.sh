#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
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
$THOME/build/unpack leftwm-0.5.4
cd leftwm-0.5.4
# cargo build --release
# need to be specific, defaults to journald == systemd
env PKG_CONFIG_PATH=/usr/lib/`$THOME/build/getarch`/pkgconfig cargo build --profile optimized --no-default-features --features=lefthk,file-log,xlib
cd ..
#
# note leftwm-theme is the theme manager, it doesn't actually contain any
# themes
#
# leftwm-theme needs gnu ar as gar in your path
# and gnu ranlib as granlib in your path
#
# many of the themes have extra dependencies, see
# https://github.com/leftwm/leftwm
#
git clone https://github.com/leftwm/leftwm-theme.git
cd leftwm-theme
env PKG_CONFIG_PATH=/usr/lib/`$THOME/build/getarch`/pkgconfig cargo build --release
cd ..

#
# utility for the new ron-based config
#
git clone https://github.com/leftwm/leftwm-config.git
cd leftwm-config
env PKG_CONFIG_PATH=/usr/lib/`$THOME/build/getarch`/pkgconfig cargo build --release
cd ..

rm -fr /tmp/ll
mkdir -p /tmp/ll/usr/bin
mkdir -p /tmp/ll/usr/share/man/man1

cd leftwm-0.5.4
ginstall -s -Dm755 ./target/optimized/leftwm ./target/optimized/leftwm-worker ./target/optimized/leftwm-state ./target/optimized/leftwm-check ./target/optimized/leftwm-command ./target/optimized/lefthk-worker -t /tmp/ll/usr/bin
ginstall -m644 ./leftwm/doc/leftwm.1 -t /tmp/ll/usr/share/man/man1
cd ..
cd leftwm-theme
ginstall -s -Dm755 ./target/release/leftwm-theme -t /tmp/ll/usr/bin
cd ..
cd leftwm-config
ginstall -s -Dm755 ./target/release/leftwm-config -t /tmp/ll/usr/bin
cd ..
${THOME}/build/create_pkg TRIBleftwm /tmp/ll
rm -fr /tmp/ll
