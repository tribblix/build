#!/bin/sh
#
# historically this was a merged package and I can't see any benefit
# from fragmenting it
#
${THOME}/build/dobuild xkbutils-1.0.4
${THOME}/build/dobuild xkbprint-1.0.4
${THOME}/build/dobuild setxkbmap-1.3.1
${THOME}/build/genpkg TRIBx11-keyboard-xkb-utilities xkbutils-1.0.4 xkbprint-1.0.4 setxkbmap-1.3.1
