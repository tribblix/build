#!/bin/sh
#
env TRIBBLIX_CFLAGS=-std=gnu99 PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild vim-8.0.1307 -C "--enable-gui=gtk2 --with-compiledby=ptribble@tribblix"
${THOME}/build/genpkg TRIBeditor-vim-gtk2 vim-8.0.1307
#
# Athena build looks like:
# ${THOME}/build/dobuild vim-8.0.1307 -C "--enable-gui=athena --with-compiledby=ptribble@tribblix"
#
