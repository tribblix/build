#!/bin/sh
#
#${THOME}/build/dobuild -gnu gegl-0.2.0 -C "--without-libavformat --without-exiv2"
#${THOME}/build/genpkg TRIBlib-gegl gegl-0.2.0

#
# new meson build
#
${THOME}/build/unpack -64 gegl-0.4.30
cd gegl-0.4.30
meson --prefix=/usr -Dintrospection=false build
cd build
ninja
cd ..
cd ..
cd gegl-0.4.30-64bit
env PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig meson --prefix=/usr -Dintrospection=false --libdir=lib/amd64 --bindir=bin/amd64 -Dc_args=-m64 -Dcpp_args=-m64 -Dc_link_args=-m64 -Dcpp_link_args=-m64 build
cd build
ninja
cd ..
cd ..

rm -fr /tmp/gg

cd gegl-0.4.30
cd build
env PATH=/usr/gnu/bin:$PATH DESTDIR=/tmp/gg ninja install
cd ..
cd ..
cd gegl-0.4.30-64bit
cd build
env PATH=/usr/gnu/bin:$PATH DESTDIR=/tmp/gg ninja install
cd ..
cd ..

${THOME}/build/create_pkg TRIBlib-gegl /tmp/gg

rm -fr /tmp/gg
