#!/bin/sh
#
${THOME}/build/dobuild -64 curl-8.4.0 -C "--with-ca-bundle=/etc/openssl/cacert.pem --with-libssh2 --enable-static=no --disable-dependency-tracking --without-zstd --with-openssl --without-brotli"
${THOME}/build/genpkg TRIBcurl curl-8.4.0
