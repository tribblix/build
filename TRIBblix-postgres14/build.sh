#!/bin/sh
#
# postgres 14
#
# this is 64-bit, unlike prior versions
#
${THOME}/build/dobuild +64only -P /opt/tribblix/postgres14 postgresql-14.6 -C "--without-readline --with-perl --with-openssl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres14 postgresql-14.6
