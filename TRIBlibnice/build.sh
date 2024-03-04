#!/bin/sh
#
# libnice now has only new gstreamer plugins
#
$THOME/build/mesonbuild -64 libnice-0.1.21 -C "-Dintrospection=disabled -Dtests=disabled"
${THOME}/build/genpkg TRIBlibnice libnice-0.1.21
