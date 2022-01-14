#!/bin/sh
#
# libspectre requires libgs provided by ghostscript
#
${THOME}/build/dobuild -64 libspectre-0.2.9
${THOME}/build/genpkg TRIBlibspectre libspectre-0.2.9
