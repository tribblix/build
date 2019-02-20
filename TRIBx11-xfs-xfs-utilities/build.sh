#!/bin/sh
#
# this is a merge of several smaller packages, that was the way
# it was inherited.
#
${THOME}/build/dobuild fslsfonts-1.0.5
${THOME}/build/dobuild fstobdf-1.0.6
${THOME}/build/dobuild showfont-1.0.5
${THOME}/build/dobuild xfsinfo-1.0.6
${THOME}/build/genpkg TRIBx11-xfs-xfs-utilities fslsfonts-1.0.5 fstobdf-1.0.6 showfont-1.0.5 xfsinfo-1.0.6
