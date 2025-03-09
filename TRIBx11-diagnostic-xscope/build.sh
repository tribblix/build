#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xscope-1.4.5 -C "CPPFLAGS=-DFD_SETSIZE=256"
${THOME}/build/genpkg TRIBx11-diagnostic-xscope xscope-1.4.5
