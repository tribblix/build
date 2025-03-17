#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# 0.11.2 requires json-c, which we don't have in 32-bit
#
${THOME}/build/dobuild -64only -gnu xfce4-weather-plugin-0.11.3
${THOME}/build/genpkg TRIBxfce-weather-plugin xfce4-weather-plugin-0.11.3
