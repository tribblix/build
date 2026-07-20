#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# historically this was a merged package and I see no benefit
# from fragmenting it
#
${THOME}/build/mesonbuild -64only xkbutils-1.0.7
${THOME}/build/mesonbuild -64only xkbprint-1.0.8
${THOME}/build/mesonbuild -64only setxkbmap-1.3.5
${THOME}/build/genpkg TRIBx11-keyboard-xkb-utilities xkbutils-1.0.7 xkbprint-1.0.8 setxkbmap-1.3.5
