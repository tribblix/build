#!/bin/sh
#
# everything is done by the fixit script
#
${THOME}/build/unpack pgbadger-9.2
cd pgbadger-9.2
# you need to run a make to create the manpage
perl Makefile.PL
make
rm -fr /tmp/pgb
mkdir -p /tmp/pgb/usr/bin
mkdir -p /tmp/pgb/usr/share/man/man1
cp pgbadger /tmp/pgb/usr/bin
cp blib/man1/pgbadger.1p /tmp/pgb/usr/share/man/man1/pgbadger.1
cd ..
${THOME}/build/create_pkg TRIBpgbadger /tmp/pgb
rm -fr /tmp/pgb
