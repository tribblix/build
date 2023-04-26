#!/bin/sh
#
$THOME/build/mesonbuild -64 libgxps-0.3.2 -C -Ddisable-introspection=true
${THOME}/build/genpkg TRIBlibgxps libgxps-0.3.2
