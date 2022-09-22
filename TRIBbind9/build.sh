#!/bin/sh
#
# must not have TRIBlibedit or TRIBjson-c installed
#
# the preconf file builds a private static libuv
#
env LIBUV_CFLAGS=-I`pwd`/bind-9.16.33-64bit/libuv-v1.40.0-64bit/include LIBUV_LIBS="`pwd`/bind-9.16.33-64bit/libuv-v1.40.0-64bit/.libs/libuv.a -lkstat -lsendfile" TRIBBLIX_CFLAGS=-D_XPG4_2 ${THOME}/build/dobuild -64only bind-9.16.33 -C "--sysconfdir=/etc --localstatedir=/var --without-python --disable-geoip"
${THOME}/build/genpkg TRIBbind9 bind-9.16.33
