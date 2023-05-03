#!/bin/sh
#
${THOME}/build/dobuild -64only links-2.29 -C "--enable-graphics --without-openmp"
${THOME}/build/genpkg TRIBlinks-browser links-2.29
