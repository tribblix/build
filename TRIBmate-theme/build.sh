#!/bin/sh
#
# mate-themes is released separately and matches gtk
# rather than mate releases
#
${THOME}/build/dobuild -gnu mate-themes-3.22.21
${THOME}/build/genpkg TRIBmate-theme mate-themes-3.22.21
