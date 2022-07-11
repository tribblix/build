#!/bin/sh
#
${THOME}/build/dobuild -64only xscope-1.4.3 -C "CPPFLAGS=-DFD_SETSIZE=256"
${THOME}/build/genpkg TRIBx11-diagnostic-xscope xscope-1.4.3
