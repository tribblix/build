#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# SPARC needs --without-ldap --without-ads
#
# disable spotlight otherwise it pulls in gnome tracker and the dependency
# tree expands
#
env CC=gcc TRIBBLIX_CFLAGS="-I/usr/gnu/include/ncurses -D_POSIX_PTHREAD_SEMANTICS -DHAVE_AUXV_T -DHCRYPTO_DEF_PROVIDER=hcrypto" TRIBBLIX_LDFLAGS="-lnsl -lsendfile -lssp_ns -R/usr/gnu/lib/`$THOME/build/getarch` -L/usr/gnu/lib/`$THOME/build/getarch`" ${THOME}/build/dobuild -64only samba-4.18.11 -P /usr -C "--enable-fhs --sysconfdir=/etc --localstatedir=/var --disable-python --without-ad-dc --disable-spotlight" -M -k
${THOME}/build/genpkg TRIBsamba4 samba-4.18.11
