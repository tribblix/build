#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# used by gimp
#
$THOME/build/mesonbuild -64only gexiv2-0.14.3 -C "-Dvapi=false -Dintrospection=false -Dpython3=false"
${THOME}/build/genpkg TRIBgexiv2 gexiv2-0.14.3
