#!/bin/sh
#
# libspectre requires libgs provided by ghostscript
#
${THOME}/build/dobuild libspectre-0.2.7
${THOME}/build/genpkg TRIBlibspectre libspectre-0.2.7 TRIBlibspectre
