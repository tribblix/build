#!/bin/sh
#
# built by hand
#
rm -fr kbd_mode
cp -r ${THOME}/build/patches/kbd_mode .
cd kbd_mode
make CC=gcc
mkdir -p /tmp/km/usr/share/man/man1
cp kbd_mode.1 /tmp/km/usr/share/man/man1
mkdir -p /tmp/km/usr/bin
cp kbd_mode /tmp/km/usr/bin
cd ..
${THOME}/build/create_pkg TRIBsys-keyboard-kbd-mode /tmp/km
rm -fr kbd_mode
rm -fr /tmp/km
