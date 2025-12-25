#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/mesonbuild -64only libgxps-0.3.2 -C -Ddisable-introspection=true
${THOME}/build/genpkg TRIBlibgxps libgxps-0.3.2
