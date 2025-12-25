#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# It wants a vpnc-script installed first; the argument here is to tell it
# where it's going to be packaged.
# And it needs tun/tap installed (the headers at least)
#
${THOME}/build/dobuild openconnect-8.20 -C "--with-vpnc-script=/etc/vpnc/vpnc-script --disable-dependency-tracking --without-gnutls --with-system-cafile=/etc/ssl/cacert.pem"
${THOME}/build/genpkg TRIBopenconnect openconnect-8.20
