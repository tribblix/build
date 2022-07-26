#!/bin/sh
#
${THOME}/build/dobuild -64only gnuplot-5.4.4 -C "--with-qt=no --disable-wxwidgets"
${THOME}/build/genpkg TRIBgnuplot gnuplot-5.4.4
