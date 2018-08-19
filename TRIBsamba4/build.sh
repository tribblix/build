#!/bin/sh
#
# SPARC needs --without-ldap --without-ads
#
${THOME}/build/dobuild samba-4.6.16 -P /usr -C "--enable-fhs --sysconfdir=/etc --localstatedir=/var" -M -k
${THOME}/build/genpkg TRIBsamba4 samba-4.6.16
