#!/bin/sh
#
env TRIBBLIX_CFLAGS=-std=gnu99 PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64only vim90 -C "--enable-gui=gtk2 --with-compiledby=ptribble@tribblix --disable-canberra" -M -k
${THOME}/build/genpkg TRIBeditor-vim-gtk2 vim90
#
# Athena build looks like:
# ${THOME}/build/dobuild vim90 -C "--enable-gui=athena --with-compiledby=ptribble@tribblix"
#
