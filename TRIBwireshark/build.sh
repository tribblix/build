#!/bin/sh
#
# this builds both the main wireshark package and the qt package
#
# needs a little extra help with kerberos
#

env TRIBBLIX_LDFLAGS="-lsocket -lnsl" TRIBBLIX_CFLAGS="-D__EXTENSIONS__ -I/usr/include/kerberosv5" PATH=${PATH}:/usr/versions/Qt-5/bin/`${THOME}/build/getarch`:/usr/perl5/5.34/bin ${THOME}/build/cmbuild -64only -gnu wireshark-3.6.15 -C "-DCMAKE_PREFIX_PATH=/usr/versions/Qt-5/lib/`${THOME}/build/getarch`/cmake -DCMAKE_INSTALL_RPATH_USE_LINK_PATH=TRUE"

${THOME}/build/genpkg TRIBwireshark wireshark-3.6.15
${THOME}/build/genpkg TRIBwireshark-qt wireshark-3.6.15
