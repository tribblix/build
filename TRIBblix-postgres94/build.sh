#!/bin/sh
#
# postgres 9.4; includes contrib
#
${THOME}/build/newbuild.sh build TRIBblix-postgres94
cd postgresql-9.4.13
rm -fr /tmp/pp
gmake install-world DESTDIR=/tmp/pp
${THOME}/build/create_pkg TRIBblix-postgres94 /tmp/pp
cd ..
rm -fr /tmp/pp
