#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env PATH=/usr/gnu/bin:$PATH AR=/usr/bin/ar CC="gcc -m64" $THOME/build/mesonbuild +64 libpeas-1.36.0 -C -Ddemos=false

rm -fr /tmp/lps

cd libpeas-1.36.0-64bit
env PATH=/usr/gnu/bin:$PATH AR=/usr/bin/ar CC="gcc -m64" DESTDIR=/tmp/lps ninja -C tribblix_build install
cd ..

${THOME}/build/create_pkg TRIBlibpeas /tmp/lps
rm -fr /tmp/lps
