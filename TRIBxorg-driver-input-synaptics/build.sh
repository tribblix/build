#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need to have the matching Xorg server that you're building for installed
#
# requires bash to run the configure script
#
$THOME/build/unpack xf86-input-synaptics-1.9.1
cd xf86-input-synaptics-1.9.1
env PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig \
bash ./configure --prefix=/usr \
--with-xorg-module-dir=/usr/lib/xorg/modules/amd64 \
CFLAGS="-m64 -O2" \
LDFLAGS="-m64" \
CXXFLAGS="-m64 -O2"
gmake -j
cd ..

${THOME}/build/genpkg TRIBxorg-driver-input-synaptics xf86-input-synaptics-1.9.1
