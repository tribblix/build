#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env AR=/usr/bin/ar ${THOME}/build/mesonbuild -64only vips-8.16.0 -C "-Dintrospection=disabled -Dimagequant=disabled"
${THOME}/build/genpkg TRIBlibvips vips-8.16.0
