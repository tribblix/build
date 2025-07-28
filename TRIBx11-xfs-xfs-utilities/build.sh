#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a merge of several smaller packages, that was the way
# it was inherited.
#
${THOME}/build/dobuild -64only fslsfonts-1.0.7
${THOME}/build/dobuild -64only fstobdf-1.0.7
${THOME}/build/dobuild -64only showfont-1.0.7
${THOME}/build/dobuild -64only xfsinfo-1.0.8
${THOME}/build/genpkg TRIBx11-xfs-xfs-utilities fslsfonts-1.0.7 fstobdf-1.0.7 showfont-1.0.7 xfsinfo-1.0.8
