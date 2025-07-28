#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# you must use the tarball from github, not the download site
#
env CPPFLAGS="-D BSD_COMP -D_XPG4_2 -D__EXTENSIONS__" ${THOME}/build/dobuild -64only mtr-0.96
${THOME}/build/genpkg TRIBmtr mtr-0.96
