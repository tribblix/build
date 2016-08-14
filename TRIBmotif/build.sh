#!/bin/sh
#
# 2.3.5 and earlier fialed with parallel make and needed -J 1
#
${THOME}/build/dobuild motif-2.3.6
${THOME}/build/genpkg TRIBmotif motif-2.3.6
