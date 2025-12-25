#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# new meson build
#
$THOME/build/mesonbuild -64only babl-0.1.98 -C "-Denable-gir=false -Denable-mmx=false -Denable-sse=false"
${THOME}/build/genpkg TRIBlib-babl babl-0.1.98
