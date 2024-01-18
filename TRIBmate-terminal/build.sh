#!/bin/sh
#
# this depends on mate-desktop, via the file
# /usr/share/glib-2.0/schemas/org.mate.interface.gschema.xml
#
env PATH=/usr/gnu/bin:$PATH $THOME/build/dobuild -64only mate-terminal-1.26.1
${THOME}/build/genpkg TRIBmate-terminal mate-terminal-1.26.1
