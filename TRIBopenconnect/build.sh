#!/bin/sh
#
# It wants a vpnc-script installed first; the argument here is to tell it
# where it's going to be packaged.
# And it needs tun/tap installed (the headers at least)
#
${THOME}/build/dobuild openconnect-6.00 -C --with-vpnc-script=/etc/vpnc/vpnc-script
cd openconnect-6.00
rm -fr /tmp/oc
mkdir -p /tmp/oc/etc/vpnc
cp ${THOME}/tarballs/vpnc-script /tmp/oc/etc/vpnc
chmod 755 /tmp/oc/etc/vpnc/vpnc-script
gmake install DESTDIR=/tmp/oc
${THOME}/build/create_pkg TRIBopenconnect /tmp/oc
