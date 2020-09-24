#!/bin/sh
#
# postgres 13
#
${THOME}/build/dobuild -P /opt/tribblix/postgres13 postgresql-13.0 -C "--without-readline --with-perl --with-openssl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres13 postgresql-13.0
