#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# experimental build
#
# SONAME isn't necessarily stable (despite the "stable" in the filename)
#
env TRIBBLIX_LDFLAGS="-lsocket -lnsl" ${THOME}/build/cmbuild -64only wolfssl-5.9.0-stable -C -DWOLFSSL_WOLFSSH=yes
${THOME}/build/genpkg TRIBwolfssl wolfssl-5.9.0-stable
