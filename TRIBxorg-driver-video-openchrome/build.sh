#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need to have the matching Xorg server that you're building for installed
#
$THOME/build/unpack xf86-video-openchrome-0.6.0
cd xf86-video-openchrome-0.6.0
sed -i s:XVMC=yes:XVMC=no: configure
env PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig \
./configure --prefix=/usr \
--with-xorg-module-dir=/usr/lib/xorg/modules/amd64 \
CFLAGS="-m64 -O2" \
LDFLAGS="-m64" \
CXXFLAGS="-m64 -O2"
gmake -j
cd ..

${THOME}/build/genpkg TRIBxorg-driver-video-openchrome xf86-video-openchrome-0.6.0
