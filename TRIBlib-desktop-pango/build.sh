#!/bin/sh
#
${THOME}/build/dobuild -64 pango-1.42.4 -C "--disable-introspection"
${THOME}/build/genpkg TRIBlib-desktop-pango pango-1.42.4
