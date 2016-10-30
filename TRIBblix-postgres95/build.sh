#!/bin/sh
#
# postgres 9.5
#
${THOME}/build/newbuild.sh build TRIBblix-postgres95
cd postgresql-9.5.5
rm -fr /tmp/pp
gmake install-world DESTDIR=/tmp/pp
${THOME}/build/create_pkg TRIBblix-postgres95 /tmp/pp
cd ..
rm -fr /tmp/pp
