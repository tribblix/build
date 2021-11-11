#!/bin/sh
#
# postgres 13
#
# this is 64-bit, unlike prior versions
# python 3.9 and later should use this version
# but we can't use --with-perl yet as that's only 32-bit
#
${THOME}/build/dobuild +64only -P /opt/tribblix/postgres13 postgresql-13.5 -C "--without-readline --with-openssl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres13 postgresql-13.5
