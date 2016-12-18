#!/bin/sh
#
# with 2.6.x need to work harder to force gnu m4, -gnu isn't enough
# 2.6.x is broken
#
# get the 2.5.39 tarball from sourceforge, the one from github is busted
#
${THOME}/build/dobuild -gnu -64 flex-2.5.39
${THOME}/build/genpkg TRIBflex flex-2.5.39
