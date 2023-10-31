#!/bin/sh
#
# we ship gvim and the desktop integration pieces in the
# TRIBeditor-vim-gtk2 package
#
# Now most of the space is actually the shared stuff
# Wrapper? [exec -a $0 /usr/bin/vim.variant "$@"]
#
# need to make with -k because msgfmt can't cope with one or more files
#
env TRIBBLIX_CFLAGS=-std=gnu99 PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64only vim-9.0.2081 -C "--with-compiledby=ptribble@tribblix --enable-gui=no --without-x --disable-canberra --disable-libsodium" -M -k
${THOME}/build/genpkg TRIBeditor-vim vim-9.0.2081
