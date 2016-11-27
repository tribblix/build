#!/bin/sh
#
# aria2
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild aria2-1.29.0 -C "--with-openssl --without-nettle --without-sqlite3 --without-libgmp --without-gnutls --with-ca-bundle=/etc/openssl/cacert.pem"
${THOME}/build/genpkg TRIBaria2 aria2-1.29.0
