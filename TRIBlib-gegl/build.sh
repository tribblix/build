#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# new meson build
#
# we need GNU msgfmt (hence PATH) but our own ar, hence AR
# no 32-bit consumers
#
env AR=/usr/bin/ar $THOME/build/mesonbuild +gnu -64only gegl-0.4.44 -C "-Dintrospection=false -Dworkshop=true -Dlibav=disabled -Dopenmp=disabled -Dsdl2=disabled -Dlibspiro=disabled"

${THOME}/build/genpkg TRIBlib-gegl gegl-0.4.44
