#!/bin/sh
#
# needed for the illumos build
#  - hal discovery addons
#  - libfmd_snmp (also 64-bit)
#
${THOME}/build/unpack -64 net-snmp-5.7.3
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
sed -i s:-lkvm:: agent/Makefile
sed -i s:-lelf:: agent/Makefile
sed -i 's:lkstat:lkstat -lsocket -lnsl:' snmplib/Makefile

gmake -j 8

cd ..

cd net-snmp-5.7.3-64bit
env LDFLAGS="-Wl,-zignore -m64" CFLAGS="-O -m64" CXXFLAGS="-O -m64" CC=gcc CXX=g++ \
    ./configure --prefix=/usr --with-defaults \
    --libdir=/usr/lib/`isainfo -k` \
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
sed -i s:-lkvm:: agent/Makefile
sed -i s:-lelf:: agent/Makefile
sed -i 's:lkstat:lkstat -lsocket -lnsl:' snmplib/Makefile

gmake -j 8

cd ..

#
# yes, genpkg ought to be equivalent to the following, but it's not
# so do it the long way
#
rm -fr /tmp/ns
cd net-snmp-5.7.3-64bit
gmake install DESTDIR=/tmp/ns
cd ..
cd net-snmp-5.7.3
gmake install DESTDIR=/tmp/ns
cd ..
${THOME}/build/create_pkg TRIBnet-snmp /tmp/ns
rm -fr /tmp/ns
