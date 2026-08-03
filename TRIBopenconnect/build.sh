#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# It wants a vpnc-script installed first; the argument here is to tell it
# where it's going to be packaged.
# And it needs tun/tap installed (the header at least)
#
env TRIBBLIX_CFLAGS=-D_POSIX_PTHREAD_SEMANTICS ${THOME}/build/dobuild openconnect-9.21 -C "--with-vpnc-script=/etc/vpnc/vpnc-script --disable-dependency-tracking --without-gnutls --with-system-cafile=/etc/ssl/cacert.pem"
${THOME}/build/genpkg TRIBopenconnect openconnect-9.21
