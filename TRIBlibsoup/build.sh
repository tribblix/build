#!/bin/sh
#
# -64 requires 64-bit gobject-introspection and glib-networking
#
${THOME}/build/dobuild -gnu libsoup-2.50.0 -C "--without-gnome --disable-more-warnings"
${THOME}/build/genpkg TRIBlibsoup libsoup-2.50.0
