#!/bin/sh
#
# needed for the illumos build
#  - hal discovery addons
#  - libfmd_snmp (also 64-bit)
#

#
# we supply (temporarily) the library pieces from 5.7.3 for backwards
# compatibility
#
${THOME}/build/unpack -64 net-snmp-5.7.3
${THOME}/build/unpack -64 net-snmp-5.9.3

#
# first 5.7.3; we disable the installation of some bits to speed things up and
# simplify cleanup, but don't disable anything that would change the build
#
cd net-snmp-5.7.3
env LDFLAGS=-Wl,-zignore CFLAGS=-O CC=gcc CXX=g++ \
    ./configure --prefix=/usr --with-defaults \
    --disable-manuals --disable-scripts --disable-mibs \
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
sed -i 's:lkstat:lkstat -lsocket -lnsl:' snmplib/Makefile

gmake -j 8

cd ..

cd net-snmp-5.7.3-64bit
env LDFLAGS="-Wl,-zignore -m64" CFLAGS="-O -m64" CXXFLAGS="-O -m64" CC=gcc CXX=g++ \
    ./configure --prefix=/usr --with-defaults \
    --disable-manuals --disable-scripts --disable-mibs \
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
#
# fix library dependencies, configure guesses wrong
#
sed -i s:-lkvm:: agent/Makefile
sed -i s:-lelf:: agent/Makefile
sed -i 's:lkstat:lkstat -lsocket -lnsl:' snmplib/Makefile

gmake -j 8

cd ..

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
cd net-snmp-5.7.3-64bit
gmake install DESTDIR=/tmp/ns
cd ..
cd net-snmp-5.7.3
gmake install DESTDIR=/tmp/ns
cd ..
#
# clean up the pieces we don't want
#
rm -fr /tmp/ns/usr/include /tmp/ns/usr/bin /tmp/ns/usr/sbin /tmp/ns/usr/share
rm -f /tmp/ns/usr/lib/lib*.la /tmp/ns/usr/lib/lib*.so
rm -f /tmp/ns/usr/lib/*/lib*.la /tmp/ns/usr/lib/*/lib*.so
#
# and now put in the proper new version
#
cd net-snmp-5.9.3
gmake install DESTDIR=/tmp/ns
cd ..
cd net-snmp-5.9.3-64bit
gmake install DESTDIR=/tmp/ns
cd ..
${THOME}/build/create_pkg TRIBnet-snmp /tmp/ns
rm -fr /tmp/ns
