#!/bin/sh
#
# qiv (needs imlib2)
#
${THOME}/build/dobuild qiv-2.3.3
cd qiv-2.3.3
rm -fr /tmp/iq
gmake install PREFIX=/tmp/iq/usr INSTALL=ginstall
${THOME}/build/create_pkg TRIBqiv /tmp/iq
rm -fr /tmp/iq
