#!/bin/sh
#
env CPPFLAGS="-D BSD_COMP -D_XPG4_2 -D__EXTENSIONS__" ${THOME}/build/dobuild -64only mtr-0.94
${THOME}/build/genpkg TRIBmtr mtr-0.94
