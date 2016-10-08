#!/bin/sh
#
# (may need to pkgrm the original first)
#
${THOME}/build/dobuild -64 pixman-0.34.0
${THOME}/build/genpkg TRIBlib-graphics-pixman pixman-0.34.0
