#!/bin/sh
#
# libspectre requires libgs provided by ghostscript
#
${THOME}/build/dobuild -64only libspectre-0.2.12
${THOME}/build/genpkg TRIBlibspectre libspectre-0.2.12
