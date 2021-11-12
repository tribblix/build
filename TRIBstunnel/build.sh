#!/bin/sh
#
#
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild stunnel-5.60 -C "--sysconfdir=/etc --localstatedir=/var --disable-libwrap"
${THOME}/build/genpkg TRIBstunnel stunnel-5.60
