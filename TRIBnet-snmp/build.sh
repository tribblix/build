#!/bin/sh
#
${THOME}/build/unpack net-snmp-5.7.3
cd net-snmp-5.7.3
env LDFLAGS=-Wl,-zignore CFLAGS=-O CC=gcc CXX=g++ \
    ./configure --prefix=/usr --with-defaults \
    --with-default-snmp-version=3 \
    --with-logfile=/var/log/snmpd.log \
    --with-persistent-directory=/var/net-snmp \
    --enable-agentx-dom-sock-only \
    --enable-ucd-snmp-compatibility \
    --enable-ipv6 \
    --enable-mfd-rewrites \
    --with-pkcs \
    --disable-embedded-perl \
    --without-perl-modules \
    --disable-static \
    --with-sys-contact=root@localhost \
    --with-transports="UDP TCP UDPIPv6 TCPIPv6" \
    --with-mib-modules="host disman/event-mib ucd-snmp/diskio udp-mib tcp-mib if-mib"
perl -pi -e 's#^^(archive_cmds=.*)"$#$1 -nostdlib"#g;' libtool

#
# fix library dependencies, configure guesses wrong
#
gsed -i s:-lkvm:: agent/Makefile
gsed -i s:-lelf:: agent/Makefile
gsed -i 's:lkstat:lkstat -lsocket -lnsl:' snmplib/Makefile

gmake -j 8

#
# yes, genpkg ought to be equivalent to the followong, but it's not
# so do it the long way
#
rm -fr /tmp/ns
gmake install DESTDIR=/tmp/ns
${THOME}/build/create_pkg TRIBnet-snmp /tmp/ns
rm -fr /tmp/ns
