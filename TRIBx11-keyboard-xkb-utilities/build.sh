#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# historically this was a merged package and I see no benefit
# from fragmenting it
#
${THOME}/build/dobuild -64only xkbutils-1.0.6
${THOME}/build/dobuild -64only xkbprint-1.0.7
${THOME}/build/dobuild -64only setxkbmap-1.3.4
${THOME}/build/genpkg TRIBx11-keyboard-xkb-utilities xkbutils-1.0.6 xkbprint-1.0.7 setxkbmap-1.3.4
