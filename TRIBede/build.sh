#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# desktop based on fltk
# needs jam (I used ftjam) installed
# and edelib
#
# it uses pekwm as the window manager
# it tries to build its own copy, which fails
# but that's fine, as we have our own better and newer copy
#
# need to explicitly specify -m64 in a couple of places:
#   CC because it's used to link, and otherwise wouldn't pass -m64 to ld
#   CXX because ede-shutdown needs it
#
env CXX="g++ -m64" CC="gcc -m64" ${THOME}/build/dobuild -64only -gnu ede-2.1 -L
${THOME}/build/genpkg TRIBede ede-2.1
