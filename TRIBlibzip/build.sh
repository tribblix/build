#!/bin/sh
#
# the consumer is php, so use the same TLS implementation (openssl)
#
${THOME}/build/cmbuild -64only libzip-1.10.1 -C -DENABLE_GNUTLS=OFF
${THOME}/build/genpkg TRIBlibzip libzip-1.10.1
