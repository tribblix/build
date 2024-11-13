#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need to be minimal in the install environment
#
env TRIBBLIX_CFLAGS=-DOPENSSL_NO_SSL2 ${THOME}/build/dobuild -64only wget-1.25.0 -C '--sysconfdir=/etc --with-ssl=openssl --disable-pcre --disable-pcre2 --without-libpsl'
${THOME}/build/genpkg TRIBwget wget-1.25.0
