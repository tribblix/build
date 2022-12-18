#!/bin/sh
#
# [needs a postconf patch]
#
${THOME}/build/dobuild -64 curl-7.86.0 -C "--with-ca-bundle=/etc/openssl/cacert.pem --with-libssh2 --enable-static=no --disable-dependency-tracking --without-zstd --with-openssl --without-brotli"
${THOME}/build/genpkg TRIBcurl curl-7.86.0
