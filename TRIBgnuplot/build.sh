#!/bin/sh
#
${THOME}/build/dobuild -64only gnuplot-5.4.10 -C "--with-qt=no --disable-wxwidgets --with-readline=builtin --with-x"
${THOME}/build/genpkg TRIBgnuplot gnuplot-5.4.10
