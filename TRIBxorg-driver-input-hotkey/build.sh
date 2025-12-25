#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need to have the matching Xorg server that you're building for installed
#
# needs the hotkey patch applied to Xorg
#
rm -fr xf86-input-hotkey
mkdir xf86-input-hotkey
cp $THOME/build/patches/xf86-input-hotkey/* xf86-input-hotkey
cd xf86-input-hotkey
gmake CC=gcc CPPFLAGS="-I/usr/include/xorg -I/usr/include/pixman-1" \
      CFLAGS="-m64 -O2" LDFLAGS="-m64"

cd ..

${THOME}/build/genpkg TRIBxorg-driver-input-hotkey xf86-input-hotkey
