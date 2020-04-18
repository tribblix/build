#!/bin/sh
#
${THOME}/build/unpack libpeas-1.26.0
cd libpeas-1.26.0
mkdir build
cd build
# would like -Dintrospection=false bu tthe build doesn't
# actually support that, despite it being listed
meson --prefix=/usr -Ddemos=false ..
env CC=gcc ninja

rm -fr /tmp/lps
env PATH=/usr/gnu/bin:$PATH CC=gcc DESTDIR=/tmp/lps ninja install

${THOME}/build/create_pkg TRIBlibpeas /tmp/lps
rm -fr /tmp/lps
