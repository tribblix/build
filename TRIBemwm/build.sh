#!/bin/sh
#
# the Makefile is patched to enable 64-bit
#
$THOME/build/dobuild emwm-src-1.1
$THOME/build/dobuild emwm-utils-src-1.1
${THOME}/build/genpkg TRIBemwm emwm-src-1.1 emwm-utils-src-1.1
