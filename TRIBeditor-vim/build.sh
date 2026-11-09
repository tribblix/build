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
# needs gnu msgfmt
#
env TRIBBLIX_CFLAGS="-std=gnu99 -Wno-error=incompatible-pointer-types" ${THOME}/build/dobuild +gnu -64only vim-9.2.1310 -C "--with-compiledby=ptribble@tribblix --enable-gui=no --enable-pixman=no --without-x --disable-canberra"
${THOME}/build/genpkg TRIBeditor-vim vim-9.2.1310
