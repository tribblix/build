#!/bin/sh
#
# the shared pieces are shipped in the TRIBeditor-vim package
#
env TRIBBLIX_CFLAGS=-std=gnu99 ${THOME}/build/dobuild +gnu -64only vim-9.1.0356 -C "--enable-gui=gtk2 --with-compiledby=ptribble@tribblix --disable-canberra --disable-libsodium" -M -k
${THOME}/build/genpkg TRIBeditor-vim-gtk2 vim-9.1.0356
#
# Athena build looks like:
# ${THOME}/build/dobuild vim90 -C "--enable-gui=athena --with-compiledby=ptribble@tribblix"
#
