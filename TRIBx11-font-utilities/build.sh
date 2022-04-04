#!/bin/sh
#
# this is a merge of several smaller packages, that was the way
# it was inherited.
#
# font-utils is in the font directory, not the app directory
#
${THOME}/build/dobuild bdftopcf-1.1
${THOME}/build/dobuild mkfontscale-1.2.2
${THOME}/build/dobuild font-util-1.3.2
${THOME}/build/genpkg TRIBx11-font-utilities bdftopcf-1.1 mkfontscale-1.2.2 font-util-1.3.2
