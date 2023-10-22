#!/bin/sh
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
env AR=/usr/bin/ar PATH=${PATH}:/usr/versions/python-3.11/bin ${THOME}/build/mesonbuild -gnu gdk-pixbuf-2.42.10 -C '-Dtests=false -Dinstalled_tests=false'
${THOME}/build/mesonbuild atk-2.38.0
${THOME}/build/dobuild -gnu gtk+-3.24.34 -C --disable-cups
${THOME}/build/mesonbuild pango-1.44.7

#
# 64-bit needs extra help
#
mv gdk-pixbuf-2.42.10 gdk-pixbuf-2.42.10-32bit
env CC="gcc -m64" AR=/usr/bin/ar PATH=${PATH}:/usr/versions/python-3.11/bin ${THOME}/build/mesonbuild +64 -gnu gdk-pixbuf-2.42.10 -C '-Dtests=false -Dinstalled_tests=false'
mv gdk-pixbuf-2.42.10-32bit gdk-pixbuf-2.42.10
#
mv atk-2.38.0 atk-2.38.0-32bit
env CC="gcc -m64" ${THOME}/build/mesonbuild +64 atk-2.38.0
mv atk-2.38.0-32bit atk-2.38.0
#
mv pango-1.44.7 pango-1.44.7-32bit
env CC="gcc -m64" ${THOME}/build/mesonbuild +64 pango-1.44.7
mv pango-1.44.7-32bit pango-1.44.7

#
# the old version is only compatible with python2, so this makes sure
# we not only link against python2 but put it in the shebang too
#
env PYTHON=/usr/bin/python2 ${THOME}/build/dobuild gobject-introspection-1.44.0
$THOME/build/mesonbuild +64 gobject-introspection-1.72.1
${THOME}/build/genpkg TRIBgobject-introspection gobject-introspection-1.44.0 gobject-introspection-1.72.1
