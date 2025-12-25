#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the extra themes are getting a bit old
#
${THOME}/build/dobuild -gnu xfwm4-themes-4.10.0
${THOME}/build/genpkg TRIBxfce-themes xfwm4-themes-4.10.0
