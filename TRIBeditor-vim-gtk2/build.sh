#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the shared pieces are shipped in the TRIBeditor-vim package
#
env TRIBBLIX_CFLAGS="-std=gnu99 -Wno-error=incompatible-pointer-types" ${THOME}/build/dobuild +gnu -64only vim-9.2.1014 -C "--enable-gui=gtk2 --with-compiledby=ptribble@tribblix --disable-canberra" -M -k
${THOME}/build/genpkg TRIBeditor-vim-gtk2 vim-9.2.1014
