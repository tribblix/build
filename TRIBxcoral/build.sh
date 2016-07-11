#!/bin/sh
#
${THOME}/build/dobuild xcoral-3.47 -J 1
rm -fr /tmp/xc
cd xcoral-3.47
gmake install exec_prefix=/tmp/xc/usr
${THOME}/build/create_pkg TRIBxcoral /tmp/xc /tmp/pct
rm -fr /tmp/xc
cd ..
