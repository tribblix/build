#!/bin/sh
#
# zap install TRIBlib-desktop-atk-bridge
# zap install TRIBlib-desktop-at-spi2
# zap install TRIBx11-libepoxy (as of 3.16.7)
# harfbuzz a dependency as of 3.20
#
${THOME}/build/dobuild -64 -gnu gtk+-3.22.30 -C "--disable-introspection --disable-cups"
${THOME}/build/genpkg TRIBlib-desktop-gtk3 gtk+-3.22.30
