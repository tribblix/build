#!/bin/sh
#
# postgres 15
#
# this is 64-bit
#
${THOME}/build/dobuild +64only -P /opt/tribblix/postgres15 postgresql-15beta3 -C "--without-readline --with-perl --with-openssl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres15 postgresql-15beta3
