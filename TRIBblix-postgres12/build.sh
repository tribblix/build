#!/bin/sh
#
# postgres 12
#
${THOME}/build/dobuild -P /opt/tribblix/postgres12 postgresql-12.7 -C "--without-readline --with-perl --with-openssl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres12 postgresql-12.7
