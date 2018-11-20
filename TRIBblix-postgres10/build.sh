#!/bin/sh
#
# postgres 10
#
${THOME}/build/dobuild -P /opt/tribblix/postgres10 postgresql-10.6 -C "--without-readline --with-perl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres10 postgresql-10.6
