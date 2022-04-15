#!/bin/sh
#
# this builds both the main wireshark package and the qt package
#
# need to explicitly tell it which qt as guessing is unreliable
# as of 2.2, needs a little extra help with kerberos
#
env TRIBBLIX_CFLAGS=-I/usr/include/kerberosv5 PATH=${PATH}:/usr/versions/Qt-5/bin:/usr/perl5/5.34/bin ${THOME}/build/dobuild -gnu wireshark-2.6.20 -C "--with-qt=5 -without-lua --with-gtk=3 --without-maxminddb"
${THOME}/build/genpkg TRIBwireshark wireshark-2.6.20
${THOME}/build/genpkg TRIBwireshark-qt wireshark-2.6.20
