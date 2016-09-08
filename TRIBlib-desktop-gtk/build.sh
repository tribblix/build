#!/bin/sh
#
# gtk 64-bit, --disable-cups as we don't have 64-bit cups or gnutls yet
#
${THOME}/build/dobuild -64 gtk+-2.24.30 -C "--disable-cups --disable-introspection"
${THOME}/build/genpkg TRIBlib-desktop-gtk gtk+-2.24.30
