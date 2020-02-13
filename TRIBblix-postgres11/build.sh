#!/bin/sh
#
# postgres 11
#
${THOME}/build/dobuild -P /opt/tribblix/postgres11 postgresql-11.7 -C "--without-readline --with-perl --with-openssl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres11 postgresql-11.7
