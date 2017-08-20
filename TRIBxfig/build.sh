#!/bin/sh
#
${THOME}/build/dobuild xfig-3.2.6a -C --without-xaw3d
${THOME}/build/dobuild fig2dev-3.2.6a
${THOME}/build/genpkg TRIBxfig xfig-3.2.6a fig2dev-3.2.6a
