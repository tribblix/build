#!/bin/sh
#
${THOME}/build/unpack mpage-2.5.7
cd mpage-2.5.7
gmake PREFIX=/usr
rm -fr /tmp/mm
gmake install PREFIX=/tmp/mm/usr
${THOME}/build/create_pkg TRIBmpage /tmp/mm
rm -fr /tmp/mm
cd ..
