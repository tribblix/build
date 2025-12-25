#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need to have the matching Xorg server that you're building for installed
#
$THOME/build/unpack xf86-video-savage-2.4.1
cd xf86-video-savage-2.4.1
env PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig \
./configure --prefix=/usr \
--with-xorg-module-dir=/usr/lib/xorg/modules/amd64 \
--disable-dri \
CFLAGS="-m64 -O2" \
LDFLAGS="-m64" \
CXXFLAGS="-m64 -O2"
gmake -j
cd ..

${THOME}/build/genpkg TRIBxorg-driver-video-savage xf86-video-savage-2.4.1
