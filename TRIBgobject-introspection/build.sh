#!/bin/sh
#
# fix - build pango to extract the gir files
# note that you need to have gobject-introspection installed
# first in order for the sacrificial pango build to generate
# its gir files
#
# als need gtk3 and gdk-pixbuf
# but the gtk3 one needs atk and gdk-pixbuf built *and* installed first
#
# there may be other packages that don't get picked up correctly
# gir coverage is rather spotty
#
# the builds used here should be the same as the regular package build
# for that component, but without introspection disabled (that's the point)
# and there's no need for the 64-bit build either
#
${THOME}/build/dobuild gdk-pixbuf-2.34.0 -C --with-x11
${THOME}/build/dobuild atk-2.20.0
${THOME}/build/dobuild -gnu gtk+-3.22.30 -C --disable-cups
${THOME}/build/dobuild pango-1.42.4

${THOME}/build/dobuild gobject-introspection-1.44.0
${THOME}/build/genpkg TRIBgobject-introspection gobject-introspection-1.44.0
