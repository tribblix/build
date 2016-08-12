#!/bin/sh
#
# postgres 9.4; includes contrib
#
${THOME}/build/newbuild.sh build TRIBblix-postgres94
cd postgresql-9.4.9
rm -fr /tmp/pp
gmake install-world DESTDIR=/tmp/pp
${THOME}/build/create_pkg TRIBblix-postgres94 /tmp/pp
rm -fr /tmp/pp
