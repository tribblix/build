#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# disabling gtk is just for the tests, it doesn't change the
# functionality
#
${THOME}/build/mesonbuild -64 pixman-0.44.0 -C "-Dgtk=disabled -Ddemos=disabled"
${THOME}/build/genpkg TRIBlib-graphics-pixman pixman-0.44.0
