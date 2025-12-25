#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_LDFLAGS="-lsocket -lnsl -lsendfile" ${THOME}/build/dobuild -64only minidlna-1.3.3 -C --with-log-path=/var/log/minidlna
${THOME}/build/genpkg TRIBminidlna minidlna-1.3.3
