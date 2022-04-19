#!/bin/sh
#
env TRIBBLIX_LDFLAGS=-lm ${THOME}/build/dobuild -64only suricata-5.0.8 -C "--with-libpcre-includes=/usr/include/pcre --enable-gccmarch-native=no --sysconfdir=/etc/ --localstatedir=/var/"
${THOME}/build/genpkg -I install-full TRIBsuricata suricata-5.0.8
