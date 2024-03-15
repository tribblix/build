#!/bin/sh
#
# disabling gtk is just for the tests, it doesn't change the
# functionality
#
${THOME}/build/mesonbuild -64 pixman-0.43.4 -C "-Dgtk=disabled -Ddemos=disabled"
${THOME}/build/genpkg TRIBlib-graphics-pixman pixman-0.43.4
