#!/bin/sh
#
#
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild stunnel-5.38 -C "--sysconfdir=/etc --localstatedir=/var"
${THOME}/build/genpkg TRIBstunnel stunnel-5.38
