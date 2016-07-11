#!/bin/sh
#
${THOME}/build/dobuild rrdtool-1.5.6 -C "--disable-lua --disable-tcl"
${THOME}/build/genpkg TRIBrrdtool rrdtool-1.5.6
