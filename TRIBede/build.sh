#!/bin/sh
#
# desktop based on fltk
# needs jam (I used ftjam) installed
# and edelib
#
${THOME}/build/dobuild -gnu ede-2.1 -L
${THOME}/build/genpkg TRIBede ede-2.1
