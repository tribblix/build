#!/bin/sh
#
# fix - build pango to extract the gir files
# note that you need to have gobject-introspection installed
# first in order for the sacrificial pango build to generate
# its gir files
#
# also need gtk3 and gdk-pixbuf
# but the gtk3 one needs atk and gdk-pixbuf built *and* installed first
#
# there may be other packages that don't get picked up correctly
# gir coverage is rather spotty
#
# the builds used here should be the same as the regular package build
# for that component, but without introspection disabled (that's the point)
# and there's no need for the 64-bit build either
#
# these builds need to match the versions in fixinstall
#
${THOME}/build/dobuild gdk-pixbuf-2.36.12 -C --with-x11
${THOME}/build/dobuild atk-2.20.0
${THOME}/build/dobuild -gnu gtk+-3.22.30 -C --disable-cups
env CC=gcc ${THOME}/build/mesonbuild pango-1.44.7

#
# the old version is only compatible with python2, so this makes sure
# we not only link against python2 but put it in the shebang too
#
env PYTHON=/usr/bin/python2 ${THOME}/build/dobuild gobject-introspection-1.44.0
$THOME/build/mesonbuild +64 gobject-introspection-1.72.0
${THOME}/build/genpkg TRIBgobject-introspection gobject-introspection-1.44.0 gobject-introspection-1.72.0
