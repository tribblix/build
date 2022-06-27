#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/mesonbuild -64only zenity-3.42.1
${THOME}/build/genpkg TRIBzenity zenity-3.42.1
