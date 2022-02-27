#!/bin/sh
#
# postgres 14
#
# this is 64-bit, unlike prior versions
# but we can't use --with-perl yet as that's only 32-bit
#
${THOME}/build/dobuild +64only -P /opt/tribblix/postgres14 postgresql-14.2 -C "--without-readline --with-openssl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres14 postgresql-14.2
