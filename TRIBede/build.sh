#!/bin/sh
#
# desktop based on fltk
# needs jam (I used ftjam) installed
# and edelib
#
# it uses pekwm as the window manager
# it tries to build its own copy, which fails
# but that's fine, as we have our own copy that works already
#
${THOME}/build/dobuild -gnu ede-2.1 -L
${THOME}/build/genpkg TRIBede ede-2.1
