#!/bin/sh
#
${THOME}/build/dobuild suricata-3.2.1 -C "--with-libpcre-includes=/usr/include/pcre --enable-gccmarch-native=no --sysconfdir=/etc/ --localstatedir=/var/"
${THOME}/build/genpkg -I install-full TRIBsuricata suricata-3.2.1
