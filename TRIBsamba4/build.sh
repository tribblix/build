#!/bin/sh
#
# SPARC needs --without-ldap --without-ads
#
env TRIBBLIX_LDFLAGS="-lnsl" ${THOME}/build/dobuild samba-4.9.18 -P /usr -C "--enable-fhs --sysconfdir=/etc --localstatedir=/var" -M -k
${THOME}/build/genpkg TRIBsamba4 samba-4.9.18
