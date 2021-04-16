#!/bin/sh
#
${THOME}/build/dobuild links-2.22 -C "--enable-graphics --without-openmp"
${THOME}/build/genpkg TRIBlinks-browser links-2.22
