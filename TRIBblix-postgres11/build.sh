#!/bin/sh
#
# postgres 11
#
# now without perl as we're 32-bit but perl is now 64-bit
#
${THOME}/build/dobuild -P /opt/tribblix/postgres11 postgresql-11.16 -C "--without-readline --without-perl --with-openssl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres11 postgresql-11.16
