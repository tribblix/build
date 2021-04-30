#!/bin/sh
#
# the build barfs on awk's crappiness, hence the AWK
#
#env AWK=nawk ${THOME}/build/dobuild -64 babl-0.1.24 -C "--disable-mmx --disable-sse"
#${THOME}/build/genpkg TRIBlib-babl babl-0.1.24

#
# new meson build
#
${THOME}/build/unpack -64 babl-0.1.86
cd babl-0.1.86
meson --prefix=/usr -Denable-gir=false -Denable-mmx=false -Denable-sse=false build
cd build
ninja
cd ..
cd ..
cd babl-0.1.86-64bit
env PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig meson --prefix=/usr -Denable-gir=false -Denable-mmx=false -Denable-sse=false --libdir=lib/amd64 -Dc_args=-m64 build
cd build
ninja
cd ..
cd ..

rm -fr /tmp/bb
cd babl-0.1.86
cd build
env DESTDIR=/tmp/bb ninja install
cd ..
cd ..
cd babl-0.1.86-64bit
cd build
env DESTDIR=/tmp/bb ninja install
cd ..
cd ..

${THOME}/build/create_pkg TRIBlib-babl /tmp/bb

rm -fr /tmp/bb
