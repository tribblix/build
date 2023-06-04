#!/bin/sh
#
# rename the download
# mv vim-9.0.tar.bz2 vim90.tar.bz2
#
# we ship gvim and the desktop integration pieces in the
# TRIBeditor-vim-gtk2 package
#
# Now most of the space is actually the shared stuff
# Wrapper? [exec -a $0 /usr/bin/vim.variant "$@"]
#
env TRIBBLIX_CFLAGS=-std=gnu99 PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64only vim90 -C "--with-compiledby=ptribble@tribblix --enable-gui=no --without-x --disable-canberra" -M -k
${THOME}/build/genpkg TRIBeditor-vim vim90
