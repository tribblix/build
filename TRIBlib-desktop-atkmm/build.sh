#!/bin/sh
#
${THOME}/build/mesonbuild -64 -gnu -B tbuild atkmm-2.28.3
${THOME}/build/genpkg TRIBlib-desktop-atkmm atkmm-2.28.3
