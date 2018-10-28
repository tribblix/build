#!/bin/sh
#
# libspectre requires libgs provided by ghostscript
#
# 32-bit only as libgs is 32-bit only
#
${THOME}/build/dobuild libspectre-0.2.8
${THOME}/build/genpkg TRIBlibspectre libspectre-0.2.8
