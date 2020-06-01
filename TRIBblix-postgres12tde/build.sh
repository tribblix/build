#!/bin/sh
#
# postgres 12 TDE
#
${THOME}/build/dobuild -P /opt/tribblix/postgres12tde postgresql-12.3_TDE_1.0 -C "--without-readline --with-perl --with-openssl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres12tde postgresql-12.3_TDE_1.0
