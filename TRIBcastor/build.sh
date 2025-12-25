#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# requires rust
#

#
# in ~/.cargo/registry/src/github.com-1ecc6299db9ec823/open-2.0.3/src/lib.rs
# you need to add "illumos" to the lists in addition to "solaris" (3 places)
#
git clone https://git.sr.ht/~julienxx/castor
cd castor
gmake

#
# manual make install as it doesn't create the directory hierarchy
#
rm -fr /tmp/cas654
mkdir -p /tmp/cas654/usr/bin
mkdir -p /tmp/cas654/usr/share/icons/hicolor/scalable/apps
mkdir -p /tmp/cas654/usr/share/icons/hicolor/16x16/apps
mkdir -p /tmp/cas654/usr/share/icons/hicolor/32x32/apps
mkdir -p /tmp/cas654/usr/share/icons/hicolor/64x64/apps
mkdir -p /tmp/cas654/usr/share/icons/hicolor/128x128/apps
mkdir -p /tmp/cas654/usr/share/applications
# we do this in postinstall
sed -i s:update-desktop-database:true: Makefile

gmake install DESTDIR=/tmp/cas654 INSTALL=ginstall

${THOME}/build/create_pkg TRIBcastor /tmp/cas654

rm -fr /tmp/cas654
