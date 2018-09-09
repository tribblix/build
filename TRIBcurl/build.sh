#!/bin/sh
#
# [needs a preconf and postconf patch]
#
${THOME}/build/dobuild -64 curl-7.61.1 -C "--with-ca-bundle=/etc/openssl/cacert.pem --with-libssh2 --enable-static=no --disable-dependency-tracking"
${THOME}/build/genpkg TRIBcurl curl-7.61.1
