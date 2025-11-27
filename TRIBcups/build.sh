#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
# illumos-gate needs the cups headers for smbsrv to build with smb
# printing enabled, but then attempts to dlopen libcups.so.2 at runtime
#
# it's a 32-bit binary, so if we were to enable smb printing (Tribblix
# does not, as it happens) then we would need to build the libraries
# at least in 32-bit mode (ie --with-components=libcups)
#

#
# it's a little bit more complicated than normal, in that we need to
# add --with-archflags=-m64 to get the 64-bit build to work
#
# don't use openssl, we've built against gnutls in the past
#
env CC=gcc CXX=g++ TRIBBLIX_CFLAGS="-D_XOPEN_SOURCE=600 -D__EXTENSIONS__" TRIBBLIX_LDFLAGS=-lsocket ${THOME}/build/dobuild -64only -n cups-2.4.15 cups-2.4.15-source -C "--sysconfdir=/etc --localstatedir=/var --with-smfmanifestdir=/lib/svc/manifest/application --with-cups-user=lp --with-cups-group=lp --disable-gssapi --with-tls=gnutls --with-archflags=-m64"
$THOME/build/genpkg TRIBcups cups-2.4.15-source
