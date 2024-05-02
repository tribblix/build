#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this depends on mate-desktop, via the file
# /usr/share/glib-2.0/schemas/org.mate.interface.gschema.xml
#
$THOME/build/dobuild +gnu -64only mate-terminal-1.28.1
${THOME}/build/genpkg TRIBmate-terminal mate-terminal-1.28.1
