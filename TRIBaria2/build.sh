#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -64only aria2-1.37.0 -C "--with-openssl --without-nettle --without-libcares --without-sqlite3 --without-libgmp --without-gnutls --with-ca-bundle=/etc/openssl/cacert.pem"
${THOME}/build/genpkg TRIBaria2 aria2-1.37.0
