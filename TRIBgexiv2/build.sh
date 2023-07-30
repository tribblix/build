#!/bin/sh
#
# used by gimp
#
$THOME/build/mesonbuild -64 gexiv2-0.12.3 -C "-Dvapi=false -Dintrospection=false"
${THOME}/build/genpkg TRIBgexiv2 gexiv2-0.12.3
