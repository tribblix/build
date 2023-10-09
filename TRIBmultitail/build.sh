#!/bin/sh
#
#
#
${THOME}/build/dobuild multitail-7.0.0 -M "-f makefile.solaris_gcc"
${THOME}/build/genpkg  -M "-f makefile.solaris_gcc" TRIBmultitail multitail-7.0.0
