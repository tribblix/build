#!/bin/sh
#
${THOME}/build/dobuild gnuplot-5.4.1 -C "--with-qt=no --disable-wxwidgets"
${THOME}/build/genpkg TRIBgnuplot gnuplot-5.4.1
