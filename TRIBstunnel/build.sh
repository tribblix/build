#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -64only stunnel-5.76 -C "--sysconfdir=/etc --localstatedir=/var --disable-libwrap"
${THOME}/build/genpkg TRIBstunnel stunnel-5.76
