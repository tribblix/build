#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# disable brotle in the 32-bit build, as our brotli is 64-bit only
#
${THOME}/build/dobuild -64 curl-8.20.0 -C "--with-ca-bundle=/etc/openssl/cacert.pem --with-libssh2 --enable-static=no --disable-dependency-tracking --with-openssl --without-brotli --disable-ldap" +C "--with-ca-bundle=/etc/openssl/cacert.pem --with-libssh2 --enable-static=no --disable-dependency-tracking --with-openssl --disable-ldap"
${THOME}/build/genpkg TRIBcurl curl-8.20.0
