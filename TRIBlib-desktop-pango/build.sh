#!/bin/sh
#
$THOME/build/mesonbuild -64 pango-1.50.14 -C "-Dintrospection=disabled"
${THOME}/build/genpkg TRIBlib-desktop-pango pango-1.50.14
