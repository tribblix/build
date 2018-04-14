#!/bin/sh
#
${THOME}/build/dobuild gnuplot-5.2.2 -C "--with-qt=no"
${THOME}/build/genpkg TRIBgnuplot gnuplot-5.2.2
