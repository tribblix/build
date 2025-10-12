#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we ship gvim and the desktop integration pieces in the
# TRIBeditor-vim-gtk2 package
#
# Now most of the space is actually the shared stuff
# Wrapper? [exec -a $0 /usr/bin/vim.variant "$@"]
#
# need to make with -k because msgfmt can't cope with one or more files
#
env TRIBBLIX_CFLAGS=-std=gnu99 ${THOME}/build/dobuild +gnu -64only vim-9.1.1846 -C "--with-compiledby=ptribble@tribblix --enable-gui=no --without-x --disable-canberra" -M -k
${THOME}/build/genpkg TRIBeditor-vim vim-9.1.1846
