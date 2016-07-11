#!/bin/sh
#
${THOME}/build/dobuild htmldoc-1.8.29 -C "--enable-openssl --disable-gnutls"
cd htmldoc-1.8.29
rm -fr /tmp/hd
gmake install datadir=/tmp/hd/usr/share mandir=/tmp/hd/usr/share/man bindir=/tmp/hd/usr/bin
${THOME}/build/create_pkg TRIBhtmldoc /tmp/hd
rm -fr /tmp/hd
