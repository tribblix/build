#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# SPARC needs --without-ldap --without-ads
#
# disable spotlight otherwise it pulls in gnome tracker and the dependency
# tree expands
#
# must not have gnu readline gettext or libiconv installed, otherwise it
# will find their headers (the way the ncurses headers work means that you
# need the -I/usr/gnu/include which exposes everything)
#
zap d TRIBgnu-gettext
zap d TRIBgnu-libiconv
zap d TRIBreadline
#
# explicitly adding --with-regedit means that the build will fail early
# if it can't find ncurses
#
env CC=gcc TRIBBLIX_CFLAGS="-I/usr/gnu/include -I/usr/gnu/include/ncursesw -D_POSIX_PTHREAD_SEMANTICS -DHAVE_AUXV_T -DHCRYPTO_DEF_PROVIDER=hcrypto -D_XOPEN_SOURCE=600 -D__EXTENSIONS__=1 -D_XPG6" TRIBBLIX_LDFLAGS="-lnsl -lsendfile -lssp_ns -R/usr/gnu/lib/`$THOME/build/getarch` -L/usr/gnu/lib/`$THOME/build/getarch` -B direct" ${THOME}/build/dobuild -64only samba-4.18.11 -P /usr -C "--enable-fhs --sysconfdir=/etc --localstatedir=/var --disable-python --without-ad-dc --disable-spotlight --with-regedit" -M -k
${THOME}/build/genpkg TRIBsamba4 samba-4.18.11
