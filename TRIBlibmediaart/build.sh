#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only libmediaart-1.9.7 -C -Dintrospection=false
${THOME}/build/genpkg TRIBlibmediaart libmediaart-1.9.7
