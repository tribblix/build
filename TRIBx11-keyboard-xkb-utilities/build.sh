#!/bin/sh
#
# historically this was a merged package and I can't see any benefit
# from fragmenting it
#
${THOME}/build/dobuild -64only xkbutils-1.0.6
${THOME}/build/dobuild -64only xkbprint-1.0.6
${THOME}/build/dobuild -64only setxkbmap-1.3.4
${THOME}/build/genpkg TRIBx11-keyboard-xkb-utilities xkbutils-1.0.6 xkbprint-1.0.6 setxkbmap-1.3.4
