#!/bin/sh
#
# stuck at 1.40.5, build failures on newer
#
${THOME}/build/dobuild -64 pango-1.40.5 -C "--disable-introspection"
${THOME}/build/genpkg TRIBlib-desktop-pango pango-1.40.5
