#!/bin/sh
#
# this is a merge of several smaller packages, that was the way
# it was inherited.
#
# font-utils is in the font directory, not the app directory
#
${THOME}/build/dobuild -64only bdftopcf-1.1
${THOME}/build/dobuild -64only mkfontscale-1.2.2
${THOME}/build/dobuild -64only font-util-1.4.0
${THOME}/build/genpkg TRIBx11-font-utilities bdftopcf-1.1 mkfontscale-1.2.2 font-util-1.4.0
