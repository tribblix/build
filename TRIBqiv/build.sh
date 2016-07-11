#!/bin/sh
#
# qiv (needs imlib2)
#
${THOME}/build/dobuild qiv-2.3.1
cd qiv-2.3.1
rm -fr /tmp/iq
gmake install PREFIX=/tmp/iq/usr
${THOME}/build/create_pkg TRIBqiv /tmp/iq
rm -fr /tmp/iq
