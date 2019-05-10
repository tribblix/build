#!/bin/sh
#
# postgres 10
#
${THOME}/build/dobuild -P /opt/tribblix/postgres10 postgresql-10.8 -C "--without-readline --with-perl --with-openssl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres10 postgresql-10.8
