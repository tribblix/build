#!/bin/sh
#
# historically this was a merged package and I can't see any benefit
# from fragmenting it
#
${THOME}/build/dobuild -64only xkbutils-1.0.5
${THOME}/build/dobuild -64only xkbprint-1.0.5
${THOME}/build/dobuild -64only setxkbmap-1.3.3
${THOME}/build/genpkg TRIBx11-keyboard-xkb-utilities xkbutils-1.0.5 xkbprint-1.0.5 setxkbmap-1.3.3
