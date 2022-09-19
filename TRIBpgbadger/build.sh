#!/bin/sh
#
${THOME}/build/unpack pgbadger-12.0
cd pgbadger-12.0
# you need to run a make to create the manpage
perl Makefile.PL
sed -i 's:sed -i.bak:gsed -i.bak:' Makefile
gmake
rm -fr /tmp/pgb
#
# make install puts it inside the perl tree, so copy by hand
#
mkdir -p /tmp/pgb/usr/bin
mkdir -p /tmp/pgb/usr/share/man/man1
cp pgbadger /tmp/pgb/usr/bin
cp blib/man1/pgbadger.1p /tmp/pgb/usr/share/man/man1/pgbadger.1
cd ..
${THOME}/build/create_pkg TRIBpgbadger /tmp/pgb
rm -fr /tmp/pgb
