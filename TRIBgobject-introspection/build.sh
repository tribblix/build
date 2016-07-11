#!/bin/sh
#
# [fix - build pango to extract the gir files]
#
# there may be other packages that don't get picked up correctly
# gir coverage is rather spotty
#
${THOME}/build/dobuild pango-1.36.8
${THOME}/build/dobuild gobject-introspection-1.44.0
${THOME}/build/genpkg TRIBgobject-introspection gobject-introspection-1.44.0
