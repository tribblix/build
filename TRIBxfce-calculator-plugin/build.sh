#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu xfce4-calculator-plugin-0.7.2
${THOME}/build/genpkg TRIBxfce-calculator-plugin xfce4-calculator-plugin-0.7.2
