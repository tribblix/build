#!/bin/sh
#
${THOME}/build/dobuild rrdtool-1.7.2 -C "--disable-lua --disable-tcl"
${THOME}/build/genpkg TRIBrrdtool rrdtool-1.7.2
