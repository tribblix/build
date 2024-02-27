#!/bin/sh
#
env TRIBBLIX_CFLAGS=-std=gnu99 PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64only vim-9.1.0139 -C "--enable-gui=gtk2 --with-compiledby=ptribble@tribblix --disable-canberra --disable-libsodium" -M -k
${THOME}/build/genpkg TRIBeditor-vim-gtk2 vim-9.1.0139
#
# Athena build looks like:
# ${THOME}/build/dobuild vim90 -C "--enable-gui=athena --with-compiledby=ptribble@tribblix"
#
