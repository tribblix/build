#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a merge of several smaller packages, that was the way
# it was inherited.
#
# font-util is in the font directory, not the app directory
#
# do not build font-util -64only, we need both the 32 and 64 bit pc file
#
${THOME}/build/dobuild -64only bdftopcf-1.1.2
${THOME}/build/mesonbuild -64only mkfontscale-1.2.4
${THOME}/build/dobuild -64 font-util-1.4.2
${THOME}/build/genpkg TRIBx11-font-utilities bdftopcf-1.1.2 mkfontscale-1.2.4 font-util-1.4.2
