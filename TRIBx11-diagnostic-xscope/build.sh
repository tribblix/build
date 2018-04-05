#!/bin/sh
#
${THOME}/build/dobuild xscope-1.4.1 -C "CPPFLAGS=-DFD_SETSIZE=256"
${THOME}/build/genpkg TRIBx11-diagnostic-xscope xscope-1.4.1
