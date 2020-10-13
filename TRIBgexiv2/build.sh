#!/bin/sh
#
# used by gimp
# 0.12 migrated to meson and the build fails
# we only have a 32-bit libexiv2
#
${THOME}/build/dobuild gexiv2-0.10.10 -C "--disable-dependency-tracking --enable-introspection=no"
${THOME}/build/genpkg TRIBgexiv2 gexiv2-0.10.10
