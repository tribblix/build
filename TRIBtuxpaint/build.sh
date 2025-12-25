#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# just a Makefile, set variables to bypass its settings
#
$THOME/build/unpack tuxpaint-0.9.30
cd tuxpaint-0.9.30

gmake PREFIX=/usr CC=gcc CPPFLAGS=-m64 LDFLAGS="-m64 -lsocket"

rm -fr /tmp/txp
env PATH=/usr/gnu/bin:$PATH gmake -k install DESTDIR=/tmp/txp PREFIX=/usr CC=gcc CPPFLAGS=-m64 LDFLAGS="-m64 -lsocket"

# we don't have, and don't want, xdg-utils so need to install the desktop
# integration manually
${THOME}/build/TRIBtuxpaint/fixinstall /tmp/txp

${THOME}/build/create_pkg TRIBtuxpaint /tmp/txp
rm -fr /tmp/txp
