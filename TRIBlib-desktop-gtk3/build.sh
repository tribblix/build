#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# zap install TRIBlib-desktop-atk-bridge
# zap install TRIBlib-desktop-at-spi2
# zap install TRIBx11-libepoxy (as of 3.16.7)
# harfbuzz a dependency as of 3.20
# fribidi a dependency as of 3.24
#
${THOME}/build/dobuild -64 -gnu gtk+-3.24.34 -C "--disable-introspection --disable-cups"
${THOME}/build/genpkg TRIBlib-desktop-gtk3 gtk+-3.24.34
