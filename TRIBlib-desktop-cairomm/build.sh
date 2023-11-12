#!/bin/sh
#
${THOME}/build/mesonbuild -64 -gnu -B tbuild cairomm-1.14.5
${THOME}/build/genpkg TRIBlib-desktop-cairomm cairomm-1.14.5
