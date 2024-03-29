#!/bin/sh
#
# there's a critical patch
#
${THOME}/build/mesonbuild +64 -gnu glibmm-2.64.5
${THOME}/build/genpkg TRIBlib-glibmm glibmm-2.64.5
