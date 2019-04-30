#!/bin/sh
#
# zap install TRIBlib-desktop-atk-bridge
# zap install TRIBlib-desktop-at-spi2
# zap install TRIBx11-libepoxy (as of 3.16.7)
#
# newer versions require updates to cairo and/or pango
# 3.18.9 requires glib to be updated to 2.45.8 or later
#
${THOME}/build/dobuild -64 -gnu gtk+-3.16.7 -C "--disable-introspection --disable-cups"
${THOME}/build/genpkg TRIBlib-desktop-gtk3 gtk+-3.16.7
