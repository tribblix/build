#!/bin/sh
#
${THOME}/build/dobuild xfig-3.2.7a -C --without-xaw3d
${THOME}/build/dobuild fig2dev-3.2.7a
${THOME}/build/genpkg TRIBxfig xfig-3.2.7a fig2dev-3.2.7a
