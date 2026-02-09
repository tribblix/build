#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# disable tpm because the code isn't even self-consistent and autoconf
# can't work out what to do on its own
#
# --enable-srp-authentication out of extreme caution over
# binary compatibility
#
${THOME}/build/dobuild -64only gnutls-3.8.12 -C "--disable-doc --without-tpm --with-included-libtasn1 --with-included-unistring --without-p11-kit --disable-dependency-tracking --with-default-trust-store-file=/etc/ssl/cacert.pem --with-default-trust-store-dir=/etc/ssl/certs --enable-srp-authentication"
${THOME}/build/genpkg TRIBgnutls gnutls-3.8.12
