#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# requires rust
#
git clone https://git.sr.ht/~admicos/moonlander
cd moonlander

cargo build --release

#
# manual install
#
rm -fr /tmp/cas656
mkdir -p /tmp/cas656/usr/bin
mkdir -p /tmp/cas656/usr/share/icons/hicolor/scalable/apps
mkdir -p /tmp/cas656/usr/share/icons/hicolor/16x16/apps
mkdir -p /tmp/cas656/usr/share/icons/hicolor/32x32/apps
mkdir -p /tmp/cas656/usr/share/icons/hicolor/64x64/apps
mkdir -p /tmp/cas656/usr/share/icons/hicolor/128x128/apps
mkdir -p /tmp/cas656/usr/share/applications

cp misc/moonlander.svg /tmp/cas656/usr/share/icons/hicolor/scalable/apps
rsvg-convert misc/moonlander.svg --width 16 -b none -o /tmp/cas656/usr/share/icons/hicolor/16x16/apps/moonlander.png
rsvg-convert misc/moonlander.svg --width 32 -b none -o /tmp/cas656/usr/share/icons/hicolor/32x32/apps/moonlander.png
rsvg-convert misc/moonlander.svg --width 64 -b none -o /tmp/cas656/usr/share/icons/hicolor/64x64/apps/moonlander.png
rsvg-convert misc/moonlander.svg --width 128 -b none -o /tmp/cas656/usr/share/icons/hicolor/128x128/apps/moonlander.png
cp misc/moonlander.desktop /tmp/cas656/usr/share/applications

ginstall -s -Dm755 ./target/release/moonlander /tmp/cas656/usr/bin

${THOME}/build/create_pkg TRIBmoonlander /tmp/cas656

rm -fr /tmp/cas656
cd ..
