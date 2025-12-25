#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Needs gobject-introspection, fixed for pango and gdk-pixbuf
# Needs TRIBlibxdg-basedir, lua, lgi
#
# current tarball (4.3) is old and won't compile with current gcc
# so use a git checkout
#
$THOME/build/cmbuild -64only https://github.com/awesomeWM/awesome -C -DGENERATE_DOC=OFF
${THOME}/build/genpkg TRIBawesome awesome
