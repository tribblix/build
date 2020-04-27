#!/bin/sh
#
env TRIBBLIX_LDFLAGS="-lsocket -lnsl -lsendfile" ${THOME}/build/dobuild minidlna-1.2.1 -C --with-log-path=/var/log/minidlna
${THOME}/build/genpkg TRIBminidlna minidlna-1.2.1
