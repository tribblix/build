#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needed for the illumos build
#  - hal discovery addons (in TRIBsvc-hal)
#    /usr/lib/hal/hald-probe-network-printer
#    /usr/lib/hal/hald-addon-network-discovery
#  - libfmd_snmp (in TRIBsvc-fma)
#    /usr/lib/fm/libfmd_snmp.so.1 (and 64-bit)
#  - snmp-notify (in TRIBsvc-fma-snmp-notify)
#
# we only declare a dependency on this package for the last one, as that's
# the one case where the code gets called
#
# m31 and earlier were linked against net-snmp-5.7.3
#

#
${THOME}/build/unpack -64 net-snmp-5.9.3

cd net-snmp-5.9.3
env LDFLAGS=-Wl,-zignore CFLAGS=-O CC=gcc CXX=g++ \
    ./configure --prefix=/usr --with-defaults \
    --with-mibdirs=/etc/net-snmp/snmp/mibs --datadir=/etc/net-snmp \
    --with-default-snmp-version=3 \
    --with-logfile=/var/log/snmpd.log \
    --with-persistent-directory=/var/net-snmp \
    --enable-agentx-dom-sock-only \
    --enable-ucd-snmp-compatibility \
    --enable-ipv6 \
    --enable-mfd-rewrites \
    --without-pkcs \
    --enable-blumenthal-aes \
    --disable-embedded-perl \
    --without-perl-modules \
    --without-kmem-usage --without-elf \
    --disable-static \
    --with-sys-contact=root@localhost \
    --with-transports="UDP TCP UDPIPv6 TCPIPv6" \
    --with-mib-modules="host disman/event-mib ucd-snmp/diskio udp-mib tcp-mib if-mib"
#
# fix library dependencies, configure guesses wrong
#
sed -i s:-lkvm:: agent/Makefile
sed -i s:-lelf:: agent/Makefile
sed -i 's:lkstat -lsocket:lkstat -lsocket -lnsl:' snmplib/Makefile

gmake -j 8

cd ..

cd net-snmp-5.9.3-64bit
env LDFLAGS="-Wl,-zignore -m64" CFLAGS="-O -m64" CXXFLAGS="-O -m64" CC=gcc CXX=g++ \
    ./configure --prefix=/usr --with-defaults \
    --libdir=/usr/lib/`isainfo -k` \
    --with-mibdirs=/etc/net-snmp/snmp/mibs --datadir=/etc/net-snmp \
    --with-default-snmp-version=3 \
    --with-logfile=/var/log/snmpd.log \
    --with-persistent-directory=/var/net-snmp \
    --enable-agentx-dom-sock-only \
    --enable-ucd-snmp-compatibility \
    --enable-ipv6 \
    --enable-mfd-rewrites \
    --without-pkcs \
    --enable-blumenthal-aes \
    --disable-embedded-perl \
    --without-perl-modules \
    --without-kmem-usage --without-elf \
    --disable-static \
    --with-sys-contact=root@localhost \
    --with-transports="UDP TCP UDPIPv6 TCPIPv6" \
    --with-mib-modules="host disman/event-mib ucd-snmp/diskio udp-mib tcp-mib if-mib"
#
# fix library dependencies, configure guesses wrong
#
sed -i s:-lkvm:: agent/Makefile
sed -i s:-lelf:: agent/Makefile
sed -i 's:lkstat -lsocket:lkstat -lsocket -lnsl:' snmplib/Makefile

gmake -j 8

cd ..

#
# yes, genpkg ought to be equivalent to the following, but it's not
# so do it the long way
#
rm -fr /tmp/ns
cd net-snmp-5.9.3
gmake install DESTDIR=/tmp/ns
cd ..
cd net-snmp-5.9.3-64bit
gmake install DESTDIR=/tmp/ns
cd ..
${THOME}/build/create_pkg TRIBnet-snmp /tmp/ns
rm -fr /tmp/ns
