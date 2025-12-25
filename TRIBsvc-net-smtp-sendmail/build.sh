#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this replaces the illumos-gate version, hence the awkward package name
# apart from being more modern, this version is also *not* behind mailwrapper
#

#
# we build a private static BerkeleyDB
# last version before the change to the AGPL license
#
# the site.config.m4 references the location here, so that BerkeleyDB
# should be autodetected
#
rm -fr /tmp/bb
$THOME/build/unpack db-5.3.28
cd db-5.3.28/build_unix
env CFLAGS="-O3 -m64" LDFLAGS=-m64 ../dist/configure --enable-static --disable-shared --prefix=/tmp/bb
gmake -j 6
gmake install
cd ../..

${THOME}/build/unpack sendmail.8.18.1
cd sendmail-8.18.1
cp ${THOME}/build/patches/sendmail/site.config.m4 devtools/Site
sed -i s:chown:true: sendmail/Makefile.m4
sed -i s:chgrp:true: sendmail/Makefile.m4
sed -i s:chown=chown:chown=true: devtools/bin/install.sh
sed -i s:chgrp:true: devtools/bin/install.sh
sed -i s:library:sharedlib: libmilter/Makefile.m4
sed -i 's:vacation:vacation libmilter:' Makefile
gmake -j 6 CCOPTS=-m64 LDOPTS=-m64

rm -fr /tmp/ss
mkdir -p /tmp/ss/usr/lib /tmp/ss/usr/bin /tmp/ss/usr/sbin \
/tmp/ss/usr/share/man/man{1,5,8}
gmake install CCOPTS=-m64 LDOPTS=-m64 DESTDIR=/tmp/ss

${THOME}/build/TRIBsvc-net-smtp-sendmail/fixinstall /tmp/ss

${THOME}/build/create_pkg TRIBsvc-net-smtp-sendmail /tmp/ss
rm -fr /tmp/ss
rm -fr /tmp/bb
