#!/bin/sh
#
# in 3.2.8a there's a file that doesn't correctly handle being
# not Xaw3d, so the postconf script handles that and will need
# removing if we ever do use Xaw3d
#
${THOME}/build/dobuild xfig-3.2.8a -C --without-xaw3d
${THOME}/build/dobuild fig2dev-3.2.8a
${THOME}/build/genpkg TRIBxfig xfig-3.2.8a fig2dev-3.2.8a
