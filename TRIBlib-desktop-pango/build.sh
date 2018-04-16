#!/bin/sh
#
# the +E is so that we can have different pango.modules for 32 and 64-bit
#
${THOME}/build/dobuild -64 pango-1.36.8 +E /usr/etc -C "--disable-introspection"
${THOME}/build/genpkg TRIBlib-desktop-pango pango-1.36.8
