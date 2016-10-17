#!/bin/sh
#
${THOME}/build/dobuild gnuplot-5.0.5 -C "--without-gd --with-qt=no"
${THOME}/build/genpkg TRIBgnuplot gnuplot-5.0.5
