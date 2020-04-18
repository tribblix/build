#!/bin/sh
#
# fix - build pango to extract the gir files
# note that you need to have gobject-introspection installed
# first in order for the sacrificial pango build to generate
# its gir files
#
# there may be other packages that don't get picked up correctly
# gir coverage is rather spotty
#
${THOME}/build/dobuild pango-1.42.4
${THOME}/build/dobuild gobject-introspection-1.44.0
${THOME}/build/genpkg TRIBgobject-introspection gobject-introspection-1.44.0
