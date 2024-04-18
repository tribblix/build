#!/bin/sh
#
# this depends on mate-desktop, via the file
# /usr/share/glib-2.0/schemas/org.mate.interface.gschema.xml
#
$THOME/build/dobuild +gnu -64only mate-terminal-1.26.1
${THOME}/build/genpkg TRIBmate-terminal mate-terminal-1.26.1
