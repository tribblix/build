#!/bin/sh
#
# the desktop build involves going round in circles
#
#   . start with xcb
#  . gdk-pixbuf needs xcb
#  pango needs harfbuzz
#  gtk needs pango cairo gdk-pixbuf
#  libnotify needs gtk
#  librsvg needs gdk-pixbuf pango cairo libcroco
#
# especially cairo, which has optional dependencies
# on components that require it, so need to rebuild
# cairo again after all the other components are built
#
${THOME}/build/dobuild -64 cairo-1.14.12 -M -k
${THOME}/build/genpkg TRIBlib-desktop-cairo cairo-1.14.12
