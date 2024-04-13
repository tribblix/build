#!/bin/sh
#
# this version doesn't work on sparc for the gate build
#
$THOME/build/dobuild https://github.com/illumos/cpp
${THOME}/build/genpkg TRIBdev-macro-cpp cpp
