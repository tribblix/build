#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Note that 3.82 introduced major incompatibilities; these have been
# reverted in 4.1 so that 4.1 should be safe
#
${THOME}/build/dobuild -64only make-4.3 -P /usr/gnu
${THOME}/build/genpkg TRIBdev-build-gnu-make make-4.3
