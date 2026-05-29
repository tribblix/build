#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only -gnu xfce4-weather-plugin-0.12.0
${THOME}/build/genpkg TRIBxfce-weather-plugin xfce4-weather-plugin-0.12.0
