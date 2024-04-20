#!/bin/sh
#
${THOME}/build/mesonbuild +gnu -64only zenity-3.42.1
${THOME}/build/genpkg TRIBzenity zenity-3.42.1
