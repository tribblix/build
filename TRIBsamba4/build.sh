#!/bin/sh
#
# SPARC needs --without-ldap --without-ads
#
env CC=gcc TRIBBLIX_CFLAGS="-D_POSIX_PTHREAD_SEMANTICS" TRIBBLIX_LDFLAGS="-lnsl -lsendfile" ${THOME}/build/dobuild samba-4.10.18 -P /usr -C "--enable-fhs --sysconfdir=/etc --localstatedir=/var --disable-python --without-ad-dc" -M -k
${THOME}/build/genpkg TRIBsamba4 samba-4.10.18
