#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# use dobuild to go through the Makefile, which handles all the prerequisites
# correctly, rather than cmbuild directly, which doesn't
#
${THOME}/build/dobuild +gnu -64only neovim-0.11.6 -M CMAKE_EXTRA_FLAGS=-DCMAKE_INSTALL_PREFIX=/usr
${THOME}/build/genpkg TRIBneovim neovim-0.11.6
