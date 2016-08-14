#!/bin/sh
#
# 2.3.5 and earlier failed with parallel make and needed -J 1
#
${THOME}/build/dobuild motif-2.3.6 -L
${THOME}/build/genpkg TRIBmotif motif-2.3.6
