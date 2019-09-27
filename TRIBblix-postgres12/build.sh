#!/bin/sh
#
# postgres 12 beta
#
${THOME}/build/dobuild -P /opt/tribblix/postgres12 postgresql-12rc1 -C "--without-readline --with-perl --with-openssl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres12 postgresql-12rc1
