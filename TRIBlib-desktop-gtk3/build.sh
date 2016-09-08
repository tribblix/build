#!/bin/sh
#
# zap install TRIBlib-desktop-atk-bridge
# zap install TRIBlib-desktop-at-spi2
#
# newer versions require updates to cairo and/or pango
#
${THOME}/build/dobuild -64 gtk+-3.14.15 -C "--disable-introspection --disable-cups"
${THOME}/build/genpkg TRIBlib-desktop-gtk3 gtk+-3.14.15
