#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# libnice now has only new gstreamer plugins
#
$THOME/build/mesonbuild -64only libnice-0.1.22 -C "-Dintrospection=disabled -Dtests=disabled -Dexamples=disabled"
${THOME}/build/genpkg TRIBlibnice libnice-0.1.22
