#!/bin/sh
#
# postgres 14
#
${THOME}/build/dobuild +64only -P /opt/tribblix/postgres14 postgresql-14.7 -C "--without-readline --with-perl --with-openssl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres14 postgresql-14.7
