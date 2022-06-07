#!/bin/sh
#
$THOME/build/mesonbuild -64 pango-1.44.7 -C "--buildtype=release -Dintrospection=false"
${THOME}/build/genpkg TRIBlib-desktop-pango pango-1.44.7
