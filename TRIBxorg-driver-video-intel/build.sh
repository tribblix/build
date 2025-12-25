#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need to have the matching Xorg server that you're building for installed
#
$THOME/build/unpack xf86-video-intel-2.99.917
cd xf86-video-intel-2.99.917
env PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig \
./configure --prefix=/usr \
--with-xorg-module-dir=/usr/lib/xorg/modules/amd64 \
--libdir=/usr/lib/amd64 \
--enable-xvmc \
--enable-sna \
--enable-uxa \
--enable-xaa \
--disable-selective-werror \
--with-default-accel=uxa \
--enable-rendernode \
--enable-create2 \
--disable-tear-free \
--disable-async-swap \
--enable-backlight \
--enable-backlight-helper \
--enable-dri \
--enable-dri2 \
--disable-dri3 \
CFLAGS=-m64 \
LDFLAGS=-m64 \
CXXFLAGS=-m64
env LD_OPTIONS=-R/usr/lib/xorg/amd64 gmake -j
cd ..

${THOME}/build/genpkg TRIBxorg-driver-video-intel xf86-video-intel-2.99.917
