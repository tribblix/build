#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# now link against Xaw3d
#
${THOME}/build/dobuild -64only xfig-3.2.9a
${THOME}/build/dobuild -64only fig2dev-3.2.9a
${THOME}/build/genpkg TRIBxfig xfig-3.2.9a fig2dev-3.2.9a
