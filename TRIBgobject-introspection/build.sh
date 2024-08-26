#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# note that you need to have gobject-introspection installed
# first in order for the sacrificial builds to generate the gir files
#
# also need gtk3 and gdk-pixbuf
# but the gtk3 one needs atk and gdk-pixbuf built *and* installed first
#
# there may be other packages that don't get picked up correctly
# gir coverage is rather spotty
#
# the builds used here should be the same as the regular package build
# for that component, but without introspection disabled (that's the point)
#
# these builds need to match the versions in fixinstall
#
# note that if you have to update gobject-introspection you'll
# probably have to go round the loop from scratch
#

#
# 64-bit needs extra help
#
env CC="gcc -m64" AR=/usr/bin/ar ${THOME}/build/mesonbuild +64 -gnu gdk-pixbuf-2.42.10 -C '-Dtests=false -Dinstalled_tests=false -Dman=false'
#
env CC="gcc -m64" ${THOME}/build/mesonbuild +64 atk-2.38.0
#
env CC="gcc -m64" $THOME/build/mesonbuild +64 harfbuzz-9.0.0 -C "-Dglib=enabled -Dcairo=enabled -Dicu=enabled -Dfreetype=enabled -Dgraphite2=enabled"
#
# pango needs the harfbuzz files installed first
#
env CC="gcc -m64" ${THOME}/build/mesonbuild +64 pango-1.50.14
#
# gtk needs the atk and gdk-pixbuf files installed first
#
# gtk can fail to build the gir files
# if it does, copy them from the installed system (from a prior version
# of this package) into the relevant build directory and run gmake
#
env CC="gcc -m64" ${THOME}/build/dobuild +64 -gnu gtk+-3.24.34 -C --disable-cups

#
# mesonbuild breaks in "interesting" ways, so run by hand
#
$THOME/build/unpack +64 gobject-introspection-1.72.1
cd gobject-introspection-1.72.1-64bit
env CC="gcc -m64" PKG_CONFIG_PATH=/usr/lib/`$THOME/build/getarch`/pkgconfig PATH=/usr/versions/python-3.12/bin:$PATH meson setup --prefix=/usr --libdir=/usr/lib/`$THOME/build/getarch` --bindir=/usr/bin/`$THOME/build/getarch` tribblix_build
env CC="gcc -m64" PKG_CONFIG_PATH=/usr/lib/`$THOME/build/getarch`/pkgconfig PATH=/usr/versions/python-3.12/bin:$PATH ninja -C tribblix_build
echo tribblix_build > .tribblix_meson_build
cd ..

${THOME}/build/genpkg TRIBgobject-introspection gobject-introspection-1.72.1
