#!/bin/sh
#
# our own tigervnc server
#
${THOME}/build/unpack tigervnc-1.10.1
cd tigervnc-1.10.1
TOPDIR=`pwd`

#
# must build the client first
# can't be out of tree otherwise the server build is confused
#
env PATH=/usr/gnu/bin:$PATH cmake -DCMAKE_INSTALL_PREFIX=/usr -G "Unix Makefiles" .
gmake -j

#
# now the server
# 1.16 requires newer bits than we have
#
mkdir build
cd build
rm -fr unix
mkdir unix
cp -R ../unix/xserver unix/
${THOME}/build/unpack xorg-server-1.15.2
cp -R xorg-server-1.15.2/* unix/xserver/
cd unix/xserver/
gpatch -p1 < ../../../unix/xserver115.patch
autoreconf -fiv

#
# this is a combination of the current OI flags and some I had to make up
# to satisfy the build
#
./configure --prefix=/usr \
--disable-builddocs \
--disable-config-hal \
--disable-dga \
--disable-dmx \
--disable-install-setuid \
--disable-kdrive \
--disable-present \
--disable-static \
--disable-unit-tests \
--disable-xephyr \
--disable-xfree86-utils \
--disable-xnest \
--disable-xorg \
--disable-xsdl \
--disable-xvfb \
--disable-xwin \
--disable-dri3 --disable-dri2 --disable-dri \
--disable-glx \
--enable-shared \
--enable-xcsecurity \
--enable-xdm-auth-1 \
--enable-xdmcp \
--with-builderstring="Solaris ABI" \
--with-default-font-path='catalogue:/etc/X11/fontpath.d' \
--with-default-xkb-model=pc105 \
--with-dri-driver-path=/usr/lib/xorg/modules/dri \
--with-log-dir=/var/log \
--with-xkb-output=/var/run/xkb \
--with-xkb-bin-directory=/usr/bin \
--with-xkb-path=/usr/share/X11/xkb \
--with-os-name="illumos" \
--with-vendor-name="Tribblix" \
--with-vendor-web="http://www.tribblix.org/" \
--without-int10 \
--disable-selective-werror \
--with-fontdir=/usr/share/fonts/X11 \
--disable-dependency-tracking \
CC=gcc \
AR_FLAGS="cruS"

gmake -j TIGERVNC_SRCDIR=${TOPDIR}

#
# install both the Xvnc pieces and the tigervnc pieces
# packaging will remove the client pieces
#
rm -fr /tmp/xxv
gmake install DESTDIR=/tmp/xxv TIGERVNC_SRCDIR=${TOPDIR}
cd $TOPDIR
gmake install DESTDIR=/tmp/xxv


${THOME}/build/create_pkg TRIBx11-server-xvnc /tmp/xxv
