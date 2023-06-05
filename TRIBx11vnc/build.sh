#!/bin/sh
#
# last release early 2019, build from a git checkout
#
${THOME}/build/dobuild -64only https://github.com/LibVNC/x11vnc
${THOME}/build/genpkg TRIBx11vnc x11vnc
