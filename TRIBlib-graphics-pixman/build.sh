#!/bin/sh
#
# (may need to pkgrm the original first)
#
${THOME}/build/dobuild -64 pixman-0.32.6
${THOME}/build/genpkg TRIBlib-graphics-pixman pixman-0.32.6
