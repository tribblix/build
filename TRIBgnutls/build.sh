#!/bin/sh
#
# gnutls, now 64-bit
#
# disable tpm because the code isn't even self-consistent and autoconf
# can't work out what to do on its own
#
${THOME}/build/dobuild -64 gnutls-3.6.16 -C "--disable-doc --without-tpm --with-included-libtasn1 --with-included-unistring --without-p11-kit --disable-dependency-tracking --with-default-trust-store-file=/etc/ssl/cacert.pem --with-default-trust-store-dir=/etc/ssl/certs"
${THOME}/build/genpkg TRIBgnutls gnutls-3.6.16
