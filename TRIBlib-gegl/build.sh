#!/bin/sh
#
# new meson build
#
# we need GNU msgfmt (hence PATH) but our own ar, hence AR
#
env AR=/usr/bin/ar PATH=/usr/gnu/bin:$PATH $THOME/build/mesonbuild -64 gegl-0.4.36 -C "-Dintrospection=false --buildtype=release -Dworkshop=true -Dlibav=disabled"

${THOME}/build/genpkg TRIBlib-gegl gegl-0.4.36
