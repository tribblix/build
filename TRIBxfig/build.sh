#!/bin/sh
#
# now link against Xaw3d
#
${THOME}/build/dobuild -64only xfig-3.2.8b
${THOME}/build/dobuild -64only fig2dev-3.2.8b
${THOME}/build/genpkg TRIBxfig xfig-3.2.8b fig2dev-3.2.8b
