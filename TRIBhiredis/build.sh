#!/bin/sh
#
${THOME}/build/dobuild hiredis-0.13.3
cd hiredis-0.13.3
rm -fr /tmp/rr
gmake install PREFIX=/tmp/rr/usr
${THOME}/build/create_pkg TRIBhiredis /tmp/rr
cd ..
rm -fr /tmp/rr
