#!/bin/sh
#
# rust code in 5.0.10 doesn't build
#
env PATH=/usr/versions/python-3.11/bin:$PATH TRIBBLIX_LDFLAGS=-lm ${THOME}/build/dobuild -64only suricata-5.0.9 -C "--with-libpcre-includes=/usr/include/pcre --enable-gccmarch-native=no --sysconfdir=/etc/ --localstatedir=/var/"
${THOME}/build/genpkg -I install-full TRIBsuricata suricata-5.0.9
