#!/bin/sh
#
# postgres 11
#
${THOME}/build/dobuild -P /opt/tribblix/postgres11 postgresql-11.0 -C --without-readline -M world
cd postgresql-11.0
rm -fr /tmp/pp
gmake install-world DESTDIR=/tmp/pp
${THOME}/build/create_pkg TRIBblix-postgres11 /tmp/pp
cd ..
rm -fr /tmp/pp
