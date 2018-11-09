#!/bin/sh
#
# postgres 11
#
${THOME}/build/dobuild -P /opt/tribblix/postgres11 postgresql-11.1 -C --without-readline -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres11 postgresql-11.1
