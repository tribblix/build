#!/bin/sh
#
# postgres 9.6
#
${THOME}/build/dobuild -P /opt/tribblix/postgres96 postgresql-9.6.11 -C --without-readline -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres96 postgresql-9.6.11
