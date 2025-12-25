#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need to have the matching Xorg server that you're building for installed
#
$THOME/build/unpack xf86-input-vmmouse-13.1.0
cd xf86-input-vmmouse-13.1.0
env PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig \
./configure --prefix=/usr \
--with-xorg-module-dir=/usr/lib/xorg/modules/amd64 \
--with-hal-bin-dir=/usr/sbin \
--with-hal-callouts-dir=/usr/lib/hal \
--with-hal-fdi-dir=/etc/hal/fdi/policy/10osvendor \
--without-libudev \
--with-udev-rules-dir=no \
CFLAGS="-m64 -O2" \
LDFLAGS="-m64" \
CXXFLAGS="-m64 -O2"
gmake -j
cd ..

${THOME}/build/genpkg TRIBxorg-driver-input-vmmouse xf86-input-vmmouse-13.1.0
