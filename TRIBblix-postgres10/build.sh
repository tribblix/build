#!/bin/sh
#
# postgres 10
#
${THOME}/build/dobuild -P /opt/tribblix/postgres10 postgresql-10.1 -C --without-readline -M world
cd postgresql-10.1
rm -fr /tmp/pp
gmake install-world DESTDIR=/tmp/pp
${THOME}/build/create_pkg TRIBblix-postgres10 /tmp/pp
cd ..
rm -fr /tmp/pp
