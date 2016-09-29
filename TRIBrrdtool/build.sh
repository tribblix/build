#!/bin/sh
#
${THOME}/build/dobuild rrdtool-1.6.0 -C "--disable-lua --disable-tcl"
${THOME}/build/genpkg TRIBrrdtool rrdtool-1.6.0
