#!/bin/sh
#
${THOME}/build/dobuild xfig-3.2.7b -C --without-xaw3d
${THOME}/build/dobuild fig2dev-3.2.7b
${THOME}/build/genpkg TRIBxfig xfig-3.2.7b fig2dev-3.2.7b
