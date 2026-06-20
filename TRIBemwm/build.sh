#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the Makefile is patched to enable 64-bit
#
$THOME/build/dobuild emwm-src-2.0
$THOME/build/dobuild emwm-utils-src-2.0
$THOME/build/dobuild -n tellmwm tellmwm-src
${THOME}/build/genpkg TRIBemwm emwm-src-2.0 emwm-utils-src-2.0 tellmwm-src
