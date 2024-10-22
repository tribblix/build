#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# experimental build
#
env TRIBBLIX_LDFLAGS="-lsocket -lnsl" ${THOME}/build/cmbuild -64only wolfssl-5.7.2-stable -C -DWOLFSSL_WOLFSSH=yes
${THOME}/build/genpkg TRIBwolfssl wolfssl-5.7.2-stable
