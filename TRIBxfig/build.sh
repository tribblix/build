#!/bin/sh
#
# now link against Xaw3d
#
${THOME}/build/dobuild -64only xfig-3.2.9
${THOME}/build/dobuild -64only fig2dev-3.2.9
${THOME}/build/genpkg TRIBxfig xfig-3.2.9 fig2dev-3.2.9
