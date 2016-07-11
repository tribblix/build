#!/bin/sh
#
# Note that 3.82 introduced major incompatibilities; these have been
# reverted in 4.1 so that 4.1 should be safe
#
${THOME}/build/dobuild make-4.1 -P /usr/gnu
${THOME}/build/genpkg TRIBdev-build-gnu-make make-4.1
