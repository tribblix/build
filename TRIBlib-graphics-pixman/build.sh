#!/bin/sh
#
# disabling gtk is just for the tests, it doesn't change the
# functionality
#
${THOME}/build/dobuild -64 pixman-0.42.2 -C --disable-gtk
${THOME}/build/genpkg TRIBlib-graphics-pixman pixman-0.42.2
