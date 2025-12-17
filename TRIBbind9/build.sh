#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# must not have TRIBlibedit or TRIBjson-c installed
#
# must have libtool installed for autoreconf to take
#
# the preconf file builds a private static libuv, although as of 9.18.19
# the libuv must be built in a separate tree
#
zap i TRIBlibtool
zap d TRIBjson-c
zap d TRIBlibedit
env LIBUV_CFLAGS=-I/tmp/libuv-v1.51.0-64bit/include LIBUV_LIBS="/tmp/libuv-v1.51.0-64bit/.libs/libuv.a -lkstat -lsendfile" TRIBBLIX_CFLAGS=-D_XPG4_2 TRIBBLIX_LDFLAGS=-lsocket ${THOME}/build/dobuild -64only bind-9.18.43 -C "--sysconfdir=/etc --localstatedir=/var --without-python --disable-geoip --disable-dependency-tracking"
${THOME}/build/genpkg TRIBbind9 bind-9.18.43
