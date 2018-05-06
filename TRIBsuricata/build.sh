#!/bin/sh
#
${THOME}/build/dobuild suricata-4.0.4 -C "--with-libpcre-includes=/usr/include/pcre --enable-gccmarch-native=no --sysconfdir=/etc/ --localstatedir=/var/"
${THOME}/build/genpkg -I install-full TRIBsuricata suricata-4.0.4
