#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the shared pieces are shipped in the TRIBeditor-vim package
#
env TRIBBLIX_CFLAGS=-std=gnu99 ${THOME}/build/dobuild +gnu -64only vim-9.1.1952 -C "--enable-gui=gtk2 --with-compiledby=ptribble@tribblix --disable-canberra" -M -k
${THOME}/build/genpkg TRIBeditor-vim-gtk2 vim-9.1.1952
