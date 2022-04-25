#!/bin/sh
#
# this is a merge of several smaller packages, that was the way
# it was inherited.
#
${THOME}/build/dobuild -64only fslsfonts-1.0.5
${THOME}/build/dobuild -64only fstobdf-1.0.6
${THOME}/build/dobuild -64only showfont-1.0.5
${THOME}/build/dobuild -64only xfsinfo-1.0.6
${THOME}/build/genpkg TRIBx11-xfs-xfs-utilities fslsfonts-1.0.5 fstobdf-1.0.6 showfont-1.0.5 xfsinfo-1.0.6
