#!/bin/sh
#
# this builds both the main wireshark package and the qt package
#
# needs a little extra help with kerberos
#
env TRIBBLIX_LDFLAGS="-lsocket -lnsl" TRIBBLIX_CFLAGS="-D__EXTENSIONS__ -I/usr/include/kerberosv5" PATH=${PATH}:/usr/versions/Qt-5/bin:/usr/perl5/5.34/bin ${THOME}/build/cmbuild -gnu wireshark-3.6.14
${THOME}/build/genpkg TRIBwireshark wireshark-3.6.14
${THOME}/build/genpkg TRIBwireshark-qt wireshark-3.6.14
