#!/bin/sh
#
# qiv (needs imlib2)
#
${THOME}/build/dobuild qiv-2.3.2
cd qiv-2.3.2
rm -fr /tmp/iq
mkdir -p /tmp/iq/usr/share/man/man1
gmake install PREFIX=/tmp/iq/usr
${THOME}/build/create_pkg TRIBqiv /tmp/iq
rm -fr /tmp/iq
