#!/bin/sh
#
${THOME}/build/dobuild -64only rrdtool-1.8.0 -C "--disable-lua --disable-tcl"
${THOME}/build/genpkg TRIBrrdtool rrdtool-1.8.0
