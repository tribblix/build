#!/bin/sh
#
# Needs gobject-introspection, fixed for pango
# Needs TRIBlibxdg-basedir, lua, lgi
#
${THOME}/build/unpack awesome-3.5.9
cd awesome-3.5.9
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
gmake -j 8
${THOME}/build/genpkg TRIBawesome
