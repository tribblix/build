#!/bin/sh
#
# [needs a postconf patch]
#
${THOME}/build/dobuild -64 curl-7.50.0 -C "--with-ca-bundle=/etc/openssl/cacert.pem --without-libssh2"
${THOME}/build/genpkg TRIBcurl curl-7.50.0
