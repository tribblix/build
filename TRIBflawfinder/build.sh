#!/bin/sh
#
${THOME}/build/unpack flawfinder-2.0.19
cd flawfinder-2.0.19
rm -fr /tmp/pif
gmake install prefix=/usr DESTDIR=/tmp/pif
${THOME}/build/create_pkg TRIBflawfinder /tmp/pif
cd ..
rm -fr /tmp/pif
