#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/mesonbuild -64only json-glib-1.8.0 -C "-Dintrospection=disabled -Dtests=false -Dman=true"
${THOME}/build/genpkg TRIBjson-glib json-glib-1.8.0
