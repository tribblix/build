#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a fixit for 8.11.0 which ships utterly broken pc files
#
${THOME}/build/dobuild -64 curl-8.11.0 -C "--with-ca-bundle=/etc/openssl/cacert.pem --with-libssh2 --enable-static=no --disable-dependency-tracking --with-openssl --without-brotli"
${THOME}/build/genpkg TRIBcurl curl-8.11.0
