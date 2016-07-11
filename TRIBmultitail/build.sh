#!/bin/sh
#
#
#
${THOME}/build/dobuild multitail-6.4.2 -M "-f makefile.solaris_gcc"
${THOME}/build/genpkg TRIBmultitail multitail-6.4.2
