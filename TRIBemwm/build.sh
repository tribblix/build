#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the Makefile is patched to enable 64-bit
#
$THOME/build/dobuild emwm-src-1.2
$THOME/build/dobuild emwm-utils-src-1.2
${THOME}/build/genpkg TRIBemwm emwm-src-1.2 emwm-utils-src-1.2
