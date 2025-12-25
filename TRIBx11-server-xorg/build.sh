#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Xorg
#
${THOME}/build/unpack xorg-server-1.16.4
cd xorg-server-1.16.4

#
# this build required updates to libpciaccess (TRIBdiagnostic-scanpci)
# mesa, glproto, and fontsproto
# needs xtrans installed
#
env PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig \
./configure --prefix=/usr \
--disable-install-setuid \
--disable-static \
--disable-unit-tests \
--disable-xwin \
--disable-xnest \
--disable-dmx \
--enable-dri \
--enable-dri2 \
--disable-present \
--enable-glx \
--enable-kdrive \
--enable-shared \
--enable-xcsecurity \
--enable-xephyr \
--enable-xdm-auth-1 \
--enable-xdmcp \
--without-dtrace \
--with-builderstring="Solaris ABI" \
--with-default-font-path='catalogue:/etc/X11/fontpath.d' \
--with-default-xkb-model=pc105 \
--with-log-dir=/var/log \
--with-module-dir=/usr/lib/xorg/modules/amd64 \
--with-os-name="illumos" \
--with-vendor-name="Tribblix" \
--with-vendor-web="http://www.tribblix.org/" \
--with-xkb-output=/var/run/xkb \
--with-xkb-bin-directory=/usr/bin \
--libdir=/usr/lib/amd64 \
CFLAGS="-m64 -O2" \
CPPFLAGS="-DSUNSOFT" \
LDFLAGS="-m64" \
CXXFLAGS="-m64 -O2"

gmake -j 4

#
# install everything into one package
# there's an empty package for Xephyr so the old one
# doesn't get left behind
#
${THOME}/build/genpkg TRIBx11-server-xorg
