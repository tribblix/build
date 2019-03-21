#!/bin/sh
#
# this is a merge of several smaller packages, that was the way
# it was inherited.
#
# we don't ship /usr/lib/X11/installalias which appears to be
# a solaris-only internal thing
#
# mkfontdir now distributed by mkfontscale
#
${THOME}/build/dobuild bdftopcf-1.1
${THOME}/build/dobuild mkfontscale-1.2.1
${THOME}/build/dobuild font-util-1.3.1
${THOME}/build/genpkg TRIBx11-font-utilities bdftopcf-1.1 mkfontscale-1.2.1 font-util-1.3.1
