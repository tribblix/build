#!/bin/sh
#
# (no pcre in the install environment)
#
env TRIBBLIX_CFLAGS=-DOPENSSL_NO_SSL2 POD2MAN=/usr/perl5/bin/pod2man ${THOME}/build/dobuild wget-1.20.3 -C '--sysconfdir=/etc --with-ssl=openssl --disable-pcre'
${THOME}/build/genpkg TRIBwget wget-1.20.3
