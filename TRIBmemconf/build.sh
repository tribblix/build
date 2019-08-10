#!/bin/sh
#
#
#
rm -fr /tmp/pp
mkdir -p /tmp/pp/usr/bin
cp ${THOME}/tarballs/memconf.v3.15.pl.gz /tmp/pp/usr/bin/memconf.gz
gunzip /tmp/pp/usr/bin/memconf
chmod 755 /tmp/pp/usr/bin/memconf
${THOME}/build/create_pkg TRIBmemconf /tmp/pp
rm -fr /tmp/pp
