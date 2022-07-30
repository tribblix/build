#!/bin/sh
#
# may need to rename the downloaded tarball, like so:
#  mv cups-2.4.2-source.tar.gz cups-2.4.2.tar.gz 
#

#
# it's a little bit more complicated than normal, in that we need to
# add --with-archflags=-m64 to get the 64-bit build to work
#
# don't use openssl, the code hasn't been modernized for opensll 1.1.1
# and we've built against gnutls in the past
#
env CC=gcc CXX=g++ TRIBBLIX_CFLAGS="-D_XOPEN_SOURCE=600 -D__EXTENSIONS__" TRIBBLIX_LDFLAGS=-lsocket ${THOME}/build/dobuild -64 cups-2.4.2 -C "--sysconfdir=/etc --localstatedir=/var --disable-gssapi --with-tls=gnutls" +C "--sysconfdir=/etc --localstatedir=/var --disable-gssapi --with-tls=gnutls --with-archflags=-m64"
$THOME/build/genpkg TRIBcups cups-2.4.2
