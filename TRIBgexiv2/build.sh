#!/bin/sh
#
# used by gimp
# 0.12 migrated to meson and the build fails
#
${THOME}/build/dobuild -64 gexiv2-0.10.10 -C "--disable-dependency-tracking --enable-introspection=no"
${THOME}/build/genpkg TRIBgexiv2 gexiv2-0.10.10
