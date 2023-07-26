#!/bin/sh
#
# there's a critical patch
#
${THOME}/build/dobuild -64 -gnu glibmm-2.62.0
${THOME}/build/genpkg TRIBlib-glibmm glibmm-2.62.0
