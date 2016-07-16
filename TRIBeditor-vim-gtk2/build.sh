#!/bin/sh
#
${THOME}/build/dobuild vim74 -C "--enable-gui=gtk2 --with-compiledby=ptribble@tribblix"
${THOME}/build/genpkg TRIBeditor-vim-gtk2 vim74
#
# Athena build looks like:
# ${THOME}/build/dobuild vim74 -C "--enable-gui=athena --with-compiledby=ptribble@tribblix"
#
