#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need to have the matching Xorg server that you're building for installed
#
$THOME/build/unpack xf86-video-ati-6.14.6
cd xf86-video-ati-6.14.6
env PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig \
./configure --prefix=/usr \
--with-xorg-module-dir=/usr/lib/xorg/modules/amd64 \
--enable-dri --disable-kms \
CFLAGS="-m64 -O2" \
LDFLAGS="-m64" \
CXXFLAGS="-m64 -O2"
sed -i 's:#define USE_XAA 1:#undef USE_XAA:' config.h
gmake -j
cd ..

${THOME}/build/genpkg TRIBxorg-driver-video-ati xf86-video-ati-6.14.6
