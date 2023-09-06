#!/bin/sh
#
# aria2
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -64only aria2-1.36.0 -C "--with-openssl --without-nettle --without-libcares --without-sqlite3 --without-libgmp --without-gnutls --with-ca-bundle=/etc/openssl/cacert.pem"
${THOME}/build/genpkg TRIBaria2 aria2-1.36.0
