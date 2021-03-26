#!/bin/sh
#
${THOME}/build/dobuild -64 gdk-pixbuf-2.36.12 -C "--with-x11 --disable-introspection"
${THOME}/build/genpkg TRIBgdk-pixbuf gdk-pixbuf-2.36.12
