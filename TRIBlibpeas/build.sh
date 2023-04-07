#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH AR=/usr/bin/ar CC=gcc $THOME/build/mesonbuild libpeas-1.26.0 -C -Ddemos=false
mv libpeas-1.26.0 libpeas-1.26.0-32bit
env PATH=/usr/gnu/bin:$PATH AR=/usr/bin/ar CC="gcc -m64" $THOME/build/mesonbuild +64 libpeas-1.26.0 -C -Ddemos=false
mv libpeas-1.26.0-32bit libpeas-1.26.0

rm -fr /tmp/lps

cd libpeas-1.26.0
env PATH=/usr/gnu/bin:$PATH AR=/usr/bin/ar CC=gcc DESTDIR=/tmp/lps ninja -C build install
cd ..
cd libpeas-1.26.0-64bit
env PATH=/usr/gnu/bin:$PATH AR=/usr/bin/ar CC="gcc -m64" DESTDIR=/tmp/lps ninja -C build install
cd ..

${THOME}/build/create_pkg TRIBlibpeas /tmp/lps
rm -fr /tmp/lps
