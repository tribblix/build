#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# experimental build
#
# SONAME isn't necessarily stable
#
env TRIBBLIX_LDFLAGS="-lsocket -lnsl" TRIBBLIX_CFLAGS=-Wno-error=pointer-sign ${THOME}/build/cmbuild -64only wolfssl-5.9.4 -C -DWOLFSSL_WOLFSSH=yes
${THOME}/build/genpkg TRIBwolfssl wolfssl-5.9.4
