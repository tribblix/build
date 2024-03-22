#!/bin/sh
#
#
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -64only stunnel-5.72 -C "--sysconfdir=/etc --localstatedir=/var --disable-libwrap"
${THOME}/build/genpkg TRIBstunnel stunnel-5.72
