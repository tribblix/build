#!/bin/sh
#
${THOME}/build/dobuild -64 curl-8.7.1 -C "--with-ca-bundle=/etc/openssl/cacert.pem --with-libssh2 --enable-static=no --disable-dependency-tracking --with-openssl --without-brotli --without-libpsl"
${THOME}/build/genpkg TRIBcurl curl-8.7.1
