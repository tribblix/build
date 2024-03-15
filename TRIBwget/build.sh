#!/bin/sh
#
# (no pcre in the install environment)
#
env TRIBBLIX_CFLAGS=-DOPENSSL_NO_SSL2 ${THOME}/build/dobuild -64only wget-1.24.5 -C '--sysconfdir=/etc --with-ssl=openssl --disable-pcre --disable-pcre2'
${THOME}/build/genpkg TRIBwget wget-1.24.5
