#!/bin/sh
#
# needs python in the path to find rst2man.py to generate man pages
#
# this version drops gdk-pixbuf-xlib, but it's deprecated and I can find
# no consumers in Tribblix
#
env AR=/usr/bin/ar PATH=${PATH}:/usr/versions/python-3.11/bin ${THOME}/build/mesonbuild -64 -gnu gdk-pixbuf-2.42.10 -C '-Dtests=false -Dinstalled_tests=false -Dintrospection=disabled'
${THOME}/build/genpkg TRIBgdk-pixbuf gdk-pixbuf-2.42.10
