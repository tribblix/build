#!/bin/sh
#
# [needs a preconf and postconf patch]
#
${THOME}/build/dobuild -64 curl-7.76.0 -C "--with-ca-bundle=/etc/openssl/cacert.pem --with-libssh2 --enable-static=no --disable-dependency-tracking --without-zstd"
${THOME}/build/genpkg TRIBcurl curl-7.76.0
