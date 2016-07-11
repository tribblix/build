#!/bin/sh
#
# install the *mm packages, sigc++, TRIBboehm-gc TRIBlibgsl TRIBboost
#
${THOME}/build/dobuild -gnu inkscape-0.91
${THOME}/build/genpkg TRIBinkscape inkscape-0.91
