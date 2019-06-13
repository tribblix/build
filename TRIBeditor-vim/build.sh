#!/bin/sh
#
# we ship gvim and the desktop integration pieces in the
# TRIBeditor-vim-gtk2 package
#
# Now most of the space is actually the shared stuff
# Wrapper? [exec -a $0 /usr/bin/vim.variant "$@"]
#
env TRIBBLIX_CFLAGS=-std=gnu99 PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild vim-8.1.1523 -C "--with-compiledby=ptribble@tribblix --enable-gui=no --without-x"
${THOME}/build/genpkg TRIBeditor-vim vim-8.1.1523
