#!/bin/sh
#
# we ship gvim in the TRIBeditor-vim-gtk2 package
#
# Now most of the space is actually the shared stuff
# Wrapper? [exec -a $0 /usr/bin/vim.variant "$@"]
#
${THOME}/build/dobuild vim74 -C "--with-compiledby=ptribble@tribblix --enable-gui=no --without-x"
${THOME}/build/genpkg TRIBeditor-vim vim74
