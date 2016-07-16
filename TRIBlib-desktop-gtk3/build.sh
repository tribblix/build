#!/bin/sh
#
# zap install TRIBlib-desktop-atk-bridge
# zap install TRIBlib-desktop-at-spi2
#
# need to patch gtk/gtksearchenginesimple.c
#
${THOME}/build/dobuild gtk+-3.12.2
${THOME}/build/genpkg TRIBlib-desktop-gtk3 gtk+-3.12.2
