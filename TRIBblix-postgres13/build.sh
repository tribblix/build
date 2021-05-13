#!/bin/sh
#
# postgres 13
#
# this is 64-bit, unlike prior versions
# python 3.9 and later should use this version
# but we can't use --with-perl yet as that's only 32-bit
#
env TRIBBLIX_CFLAGS=-m64 TRIBBLIX_LDFLAGS=-m64 ${THOME}/build/dobuild -P /opt/tribblix/postgres13 postgresql-13.3 -C "--without-readline --with-openssl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres13 postgresql-13.3
