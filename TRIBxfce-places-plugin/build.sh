#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu xfce4-places-plugin-1.8.3
${THOME}/build/genpkg TRIBxfce-places-plugin xfce4-places-plugin-1.8.3
