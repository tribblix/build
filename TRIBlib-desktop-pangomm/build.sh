#!/bin/sh
#
${THOME}/build/mesonbuild -64 -gnu pangomm-2.42.2
${THOME}/build/genpkg TRIBlib-desktop-pangomm pangomm-2.42.2
