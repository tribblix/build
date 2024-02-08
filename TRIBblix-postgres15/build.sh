#!/bin/sh
#
# postgres 15
#
${THOME}/build/dobuild +64only -P /opt/tribblix/postgres15 postgresql-15.6 -C "--without-readline --with-perl --with-openssl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres15 postgresql-15.6
