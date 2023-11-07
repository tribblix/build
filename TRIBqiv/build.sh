#!/bin/sh
#
# qiv (needs imlib2)
#
env CC="gcc -m64" ${THOME}/build/dobuild -64only qiv-2.3.3
cd qiv-2.3.3-64bit
rm -fr /tmp/iq
gmake install PREFIX=/tmp/iq/usr INSTALL=ginstall
${THOME}/build/create_pkg TRIBqiv /tmp/iq
rm -fr /tmp/iq
